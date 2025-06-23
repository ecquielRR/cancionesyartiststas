package com.EzequielRosales.servicios;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.EzequielRosales.modelos.Cancion;
import com.EzequielRosales.repositorios.RepositorioCanciones;

@Service
public class ServicioCanciones {

    @Autowired
    private final RepositorioCanciones repositorioCanciones;

    public ServicioCanciones(RepositorioCanciones repositorioCanciones) {
        this.repositorioCanciones = repositorioCanciones;
    }

    public List<Cancion> obtenerTodasLasCanciones() {
        return this.repositorioCanciones.obtenerTodasLasCanciones();
    }

    public Cancion obtenerCancionPorId(Long id) {
        return this.repositorioCanciones.obtenerCancionPorId(id);
    }

    public Cancion agregarCancion(Cancion nuevaCancion) {
        return this.repositorioCanciones.save(nuevaCancion);
    }

    public Cancion actualizaCancion(Cancion cancion) {
        return this.repositorioCanciones.save(cancion);
    }

    public void eliminaCancion(Long id) {
        this.repositorioCanciones.deleteById(id);
    }
}
