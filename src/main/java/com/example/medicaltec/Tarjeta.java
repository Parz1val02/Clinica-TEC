package com.example.medicaltec;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "tarjeta")
public class Tarjeta {
    @Id
    @Column(name = "idTarjetas", nullable = false)
    private Integer id;

    @Column(name = "numero", nullable = false)
    private Long numero;

    @Column(name = "nombre", nullable = false, length = 45)
    private String nombre;

}