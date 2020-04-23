/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package demo.com.Model.dao;

import java.util.List;

/**
 *
 * @author Opac
 */
public interface IRetreive<T> {
    abstract List<T> retreive();
}
