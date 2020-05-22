
package com.emergentes.modelo;



public class Blog {
    private int id;
    private String fecha;
    private String titulo;
    private String contenido;

    
    public Blog() {
        this.id = 0;
        this.fecha = "";
        this.titulo = "";
        this.contenido = "";
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getContenido() {
        return contenido;
    }

    public void setContenido(String contenido) {
        this.contenido = contenido;
    }


  }