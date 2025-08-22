import { Injectable, NotFoundException } from '@nestjs/common';
import { CreateProyectoDto } from './dto/create-proyecto.dto';
import { UpdateProyectoDto } from './dto/update-proyecto.dto';
import { InjectRepository } from '@nestjs/typeorm';
import { Proyecto } from './entities/proyecto.entity';
import { Repository } from 'typeorm';

@Injectable()
export class ProyectoService {
  constructor(
    @InjectRepository(Proyecto)
    private readonly proyectoRepository: Repository<Proyecto>,
  ) {}

  async create(createProyectoDto: CreateProyectoDto): Promise<Proyecto> {
    const proyecto = this.proyectoRepository.create(createProyectoDto);
    return await this.proyectoRepository.save(proyecto);
  }

  async findAll(): Promise<Proyecto[]> {
    return await this.proyectoRepository.find({
      relations: ['empleados'], // por si quieres traer empleados también
    });
  }

  async findOne(id: number): Promise<Proyecto> {
    const proyecto = await this.proyectoRepository.findOne({
      where: { idProyecto: id },
      relations: ['empleados'],
    });
    if (!proyecto) {
      throw new NotFoundException(`Proyecto con ID ${id} no encontrado`);
    }
    return proyecto;
  }

  async update(id: number, updateProyectoDto: UpdateProyectoDto): Promise<Proyecto> {
    const proyecto = await this.findOne(id); // reutilizamos la validación
    Object.assign(proyecto, updateProyectoDto);
    return await this.proyectoRepository.save(proyecto);
  }

  async remove(id: number): Promise<void> {
    const result = await this.proyectoRepository.delete(id);
    if (result.affected === 0) {
      throw new NotFoundException(`Proyecto con ID ${id} no encontrado`);
    }
  }
}
