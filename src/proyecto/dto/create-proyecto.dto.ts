import { Transform, Type } from "class-transformer";
import { IsDate, IsDateString, IsISO8601, IsNumber, IsOptional, IsString, Max, Min } from "class-validator";
import { OneToMany } from "typeorm";

export class CreateProyectoDto {
    @IsString()
    readonly titulo: string;

    @IsOptional()
    @IsString()
    readonly descripcion: string;

    @IsDate()
    @Transform(({value}) => new Date(value))
    readonly fechaInicio: Date; 

    @IsDate()
    @Transform(({value}) => new Date(value))
    readonly fechaFinalizacion: Date;  

    @IsOptional()
    @IsNumber()
    @Min(0)
    @Max(1)
    readonly porcentajeP: number;
}
