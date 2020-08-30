package pl.sda.twitter.persistance;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {

    private static final SessionFactory SESION_FACTORY = buildSessionFactory();

    private static SessionFactory buildSessionFactory(){
        return new Configuration()
                .configure()
                .buildSessionFactory();

    }

    public static  SessionFactory getSesionFactory(){
        return SESION_FACTORY;
    }
}
