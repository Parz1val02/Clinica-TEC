package com.example.medicaltec.repository;

import com.example.medicaltec.Entity.Cita;
import com.example.medicaltec.dto.CitaxReunionDto;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;

public interface CitaRepository extends JpaRepository<Cita, Integer> {

    @Query(nativeQuery = true, value = "SELECT * FROM telesystem_2.cita where citacancelada=0 and paciente_dni=?1")
    List<Cita> historialCitas(String dniPaciente);

    @Query(nativeQuery = true, value = "SELECT * FROM telesystem_2.cita where fecha < current_date() and citacancelada=0 and estadoscita_idestados=3 and paciente_dni=?1")
    List<Cita> historialCitas2(String dniPaciente);

    @Query(nativeQuery = true, value = "SELECT * FROM telesystem_2.cita where fecha >= current_date() and citacancelada=0 and paciente_dni=?1")
    List<Cita> historialCitasAgendadas(String dniPaciente);

    @Query(value = "SELECT * FROM telesystem_2.cita WHERE doctor_dni1=\"12345678\" " +
            "AND estadoscita_idestados=3 ORDER BY fecha DESC, hora DESC;",
            nativeQuery = true)
    List<Cita> pacientesAtendidos();

    @Query(value = "SELECT paciente_dni from telesystem_2.cita where doctor_dni1=\"12345678\"" +
            " AND estadoscita_idestados=3 group by paciente_dni",nativeQuery = true)
    List<String> pacientesdeldoctor();

    @Query(value = "SELECT * FROM telesystem_2.cita WHERE doctor_dni1=\"12345678\" " +
            "AND estadoscita_idestados=1 ORDER BY fecha DESC, hora DESC;",
            nativeQuery = true)
    List<Cita> proximasCitasAgendadas();

    @Query(value = "SELECT * FROM telesystem_2.cita WHERE paciente_dni=?1 AND fecha<now() ORDER BY fecha DESC, hora DESC;",
            nativeQuery = true)
    List<Cita> citasPorUsuario(String id_paciente);


    //para videollamada
    @Query(nativeQuery = true, value = "SELECT c.idcita, rv.enlace FROM telesystem_2.cita c inner join reunion_virtual rv on c.idcita = rv.cita_idcita")
    List<CitaxReunionDto> citasxEnlace();

}