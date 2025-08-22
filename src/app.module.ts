import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { TypeOrmModule} from '@nestjs/typeorm'
import { ProyectoModule } from './proyecto/proyecto.module';
import { Proyecto } from './proyecto/entities/proyecto.entity';
import { EmpleadoModule } from './empleado/empleado.module';
import { Empleado } from './empleado/entities/empleado.entity';

@Module({
  imports: [
    TypeOrmModule.forRoot({
      type: 'mysql',
      host: 'localhost',
      port: 3306,
      username: 'root',
      password: '',
      database: 'primer_parcial',
      synchronize: true,
      entities: [
        Proyecto,
        Empleado
      ],
      logging: true,
      logger: 'advanced-console',
    }),
    ProyectoModule,
    EmpleadoModule
  ],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
