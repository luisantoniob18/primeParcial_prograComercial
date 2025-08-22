import { Module } from '@nestjs/common';
import { EmpleadoService } from './empleado.service';
import { EmpleadoController } from './empleado.controller';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Proyecto } from 'src/proyecto/entities/proyecto.entity';
import { Empleado } from './entities/empleado.entity';
import { ProyectoModule } from 'src/proyecto/proyecto.module';

@Module({
  imports: [TypeOrmModule.forFeature([Empleado, Proyecto]),
  
],
  controllers: [EmpleadoController],
  providers: [EmpleadoService],
  exports: [EmpleadoService],
})
export class EmpleadoModule {}
