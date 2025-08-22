import { Transform, Type } from "class-transformer";
import { IsDate, IsISO8601, IsNumber, IsString } from "class-validator";

export class CreateEmpleadoDto {
    @IsString()
    readonly nombre: string;

    @IsString()
    readonly apellido: string;

    @IsDate()
        @Transform(({value}) => new Date(value))
    readonly fechaNacimiento: Date; 

    @IsString()
    readonly lugarN: string;

    @IsNumber()
    readonly idProyecto: number;
}
