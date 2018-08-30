/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.Month;
import java.time.format.DateTimeFormatter;
import java.util.Date;

/**
 *
 * @author Adonis
 */
public class Fecha {

    int mes;
    int dia;
    int año;

    public Fecha() {
        LocalDateTime localDateTime = LocalDateTime.now();
        this.dia = localDateTime.getDayOfMonth();
        this.mes = localDateTime.getMonthValue();
        this.año = localDateTime.getYear();
    }

    public Date getDate() {
        Date date = new Date();
        date.setDate(dia);
        date.setMonth(mes);
        date.setYear(año);
        return date;
    }

    public int getMes() {
        return mes;
    }

    public void setMes(int mes) {
        this.mes = mes;
    }

    public int getDia() {
        return dia;
    }

    public void setDia(int dia) {
        this.dia = dia;
    }

    public int getAño() {
        return año;
    }

    public void setAño(int año) {
        this.año = año;
    }
}
