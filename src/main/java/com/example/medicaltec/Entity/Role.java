package com.example.medicaltec.Entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "roles")
public class Role {
    @Id
    @Column(name = "idroles", nullable = false)
    private Integer id;

    @Column(name = "nombre_rol", nullable = false, length = 45)
    private String nombreRol;

}