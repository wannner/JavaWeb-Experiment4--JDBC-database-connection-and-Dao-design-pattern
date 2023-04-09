package factory;

import dao.IStudentsDAO;
import dao.impl.StudentsDAOimpl;

public class DAOfactory {
    public static IStudentsDAO getStudentsDAOimplInstance(){
        return new StudentsDAOimpl();
    }
}
