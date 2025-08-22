import { Empleado } from "src/empleado/entities/empleado.entity";
import { Column, CreateDateColumn, Entity, OneToMany, PrimaryGeneratedColumn, UpdateDateColumn } from "typeorm";

@Entity('proyecto')
export class Proyecto {
    @PrimaryGeneratedColumn()
    idProyecto: number;

    @Column({nullable: false})
    titulo: string;

    @Column({nullable: true})
    descripcion: string;

    @Column({nullable: false})
    fechaInicio: Date;

    @Column({nullable: false})
    fechaFinalizacion: Date;

    @Column({ default: 0})
    porcentajeP: number;

    @CreateDateColumn({
        type: 'timestamp',
        precision: 0,
        default: () => 'CURRENT_TIMESTAMP',
    })
    createdAt: Date;

    @UpdateDateColumn({
        type: 'timestamp',
        precision: 0,
        default: () => 'CURRENT_TIMESTAMP',
        onUpdate: 'CURRENT_TIMESTAMP'
    })
    updatedAt: Date;

    @OneToMany(() => Empleado, empleado => empleado.proyecto)
    empleados: Empleado[];
}
