import { Injectable, NotFoundException } from '@nestjs/common';
import { CreateEmpleadoDto } from './dto/create-empleado.dto';
import { UpdateEmpleadoDto } from './dto/update-empleado.dto';
import { InjectRepository } from '@nestjs/typeorm';
import { Empleado } from './entities/empleado.entity';
import { Repository } from 'typeorm';
import { Proyecto } from 'src/proyecto/entities/proyecto.entity';

@Injectable()
export class EmpleadoService {
  constructor(
    @InjectRepository(Empleado)
    private readonly empleadoRepository: Repository<Empleado>,

    @InjectRepository(Proyecto)
    private readonly proyectoRepository: Repository<Proyecto>,
  ) {}
  
  async create(createEmpleadoDto: CreateEmpleadoDto): Promise<Empleado> {
    const proyecto = await this.proyectoRepository.findOne({
      where: { idProyecto: createEmpleadoDto.idProyecto },
    });
    if (!proyecto) {
      throw new NotFoundException(
        `Proyecto con ID ${createEmpleadoDto.idProyecto} no encontrado`,
      );
    }

    const empleado = this.empleadoRepository.create({
      ...createEmpleadoDto,
      proyecto,
    });

    return await this.empleadoRepository.save(empleado);
  }

  async findAll(): Promise<Empleado[]> {
    return await this.empleadoRepository.find({
      relations: ['proyecto'],
    });
  }

  async findOne(id: number): Promise<Empleado> {
    const empleado = await this.empleadoRepository.findOne({
      where: { idEmpleado: id },
      relations: ['proyecto'],
    });

    if (!empleado) {
      throw new NotFoundException(`Empleado con ID ${id} no encontrado`);
    }

    return empleado;
  }

  async update(id: number, updateEmpleadoDto: UpdateEmpleadoDto): Promise<Empleado> {
    const empleado = await this.findOne(id);

    if (updateEmpleadoDto.idProyecto) {
      const proyecto = await this.proyectoRepository.findOne({
        where: { idProyecto: updateEmpleadoDto.idProyecto },
      });
      if (!proyecto) {
        throw new NotFoundException(
          `Proyecto con ID ${updateEmpleadoDto.idProyecto} no encontrado`,
        );
      }
      empleado.proyecto = proyecto;
    }

    Object.assign(empleado, updateEmpleadoDto);
    return await this.empleadoRepository.save(empleado);
  }

  async remove(id: number): Promise<void> {
    const result = await this.empleadoRepository.delete(id);
    if (result.affected === 0) {
      throw new NotFoundException(`Empleado con ID ${id} no encontrado`);
    }
  }
}
