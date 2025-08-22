import { Proyecto } from "src/proyecto/entities/proyecto.entity";
import { Column, CreateDateColumn, Entity, ManyToOne, PrimaryColumn, PrimaryGeneratedColumn } from "typeorm";

@Entity('empleado')
export class Empleado {
    @PrimaryGeneratedColumn()
    idEmpleado: number;

    @Column({nullable: false})
    nombre: string;

    @Column({nullable: false})
    apellido: string;
    
    @Column({nullable: false})
    fechaNacimiento: Date;

    @Column({nullable: false})
    lugarN: string;

    @CreateDateColumn({
            type: 'timestamp',
            precision: 0,
            default: () => 'CURRENT_TIMESTAMP',
        })
    createdAt: Date;
    
    @CreateDateColumn({
            type: 'timestamp',
            precision: 0,
            default: () => 'CURRENT_TIMESTAMP',
            update: true
        })
    updatedAt: Date;

    @ManyToOne(() => Proyecto, proyecto => proyecto.empleados)
    proyecto: Proyecto;
}
