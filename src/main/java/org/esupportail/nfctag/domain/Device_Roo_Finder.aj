// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.esupportail.nfctag.domain;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import org.esupportail.nfctag.domain.Application;
import org.esupportail.nfctag.domain.Device;

privileged aspect Device_Roo_Finder {
    
    public static Long Device.countFindDevicesByApplicationEquals(Application application) {
        if (application == null) throw new IllegalArgumentException("The application argument is required");
        EntityManager em = Device.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM Device AS o WHERE o.application = :application", Long.class);
        q.setParameter("application", application);
        return ((Long) q.getSingleResult());
    }
    
    public static Long Device.countFindDevicesByEppnInitEquals(String eppnInit) {
        if (eppnInit == null || eppnInit.length() == 0) throw new IllegalArgumentException("The eppnInit argument is required");
        EntityManager em = Device.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM Device AS o WHERE o.eppnInit = :eppnInit", Long.class);
        q.setParameter("eppnInit", eppnInit);
        return ((Long) q.getSingleResult());
    }
    
    public static Long Device.countFindDevicesByEppnInitLike(String eppnInit) {
        if (eppnInit == null || eppnInit.length() == 0) throw new IllegalArgumentException("The eppnInit argument is required");
        eppnInit = eppnInit.replace('*', '%');
        if (eppnInit.charAt(0) != '%') {
            eppnInit = "%" + eppnInit;
        }
        if (eppnInit.charAt(eppnInit.length() - 1) != '%') {
            eppnInit = eppnInit + "%";
        }
        EntityManager em = Device.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM Device AS o WHERE LOWER(o.eppnInit) LIKE LOWER(:eppnInit)", Long.class);
        q.setParameter("eppnInit", eppnInit);
        return ((Long) q.getSingleResult());
    }
    
    public static Long Device.countFindDevicesByImeiEquals(String imei) {
        if (imei == null || imei.length() == 0) throw new IllegalArgumentException("The imei argument is required");
        EntityManager em = Device.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM Device AS o WHERE o.imei = :imei", Long.class);
        q.setParameter("imei", imei);
        return ((Long) q.getSingleResult());
    }
    
    public static Long Device.countFindDevicesByLocationAndEppnInitAndImeiEquals(String location, String eppnInit, String imei) {
        if (location == null || location.length() == 0) throw new IllegalArgumentException("The location argument is required");
        if (eppnInit == null || eppnInit.length() == 0) throw new IllegalArgumentException("The eppnInit argument is required");
        if (imei == null || imei.length() == 0) throw new IllegalArgumentException("The imei argument is required");
        EntityManager em = Device.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM Device AS o WHERE o.location = :location AND o.eppnInit = :eppnInit AND o.imei = :imei", Long.class);
        q.setParameter("location", location);
        q.setParameter("eppnInit", eppnInit);
        q.setParameter("imei", imei);
        return ((Long) q.getSingleResult());
    }
    
    public static Long Device.countFindDevicesByLocationAndEppnInitAndMacAddressEquals(String location, String eppnInit, String macAddress) {
        if (location == null || location.length() == 0) throw new IllegalArgumentException("The location argument is required");
        if (eppnInit == null || eppnInit.length() == 0) throw new IllegalArgumentException("The eppnInit argument is required");
        if (macAddress == null || macAddress.length() == 0) throw new IllegalArgumentException("The macAddress argument is required");
        EntityManager em = Device.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM Device AS o WHERE o.location = :location AND o.eppnInit = :eppnInit AND o.macAddress = :macAddress", Long.class);
        q.setParameter("location", location);
        q.setParameter("eppnInit", eppnInit);
        q.setParameter("macAddress", macAddress);
        return ((Long) q.getSingleResult());
    }
    
    public static Long Device.countFindDevicesByLocationEquals(String location) {
        if (location == null || location.length() == 0) throw new IllegalArgumentException("The location argument is required");
        EntityManager em = Device.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM Device AS o WHERE o.location = :location", Long.class);
        q.setParameter("location", location);
        return ((Long) q.getSingleResult());
    }
    
    public static Long Device.countFindDevicesByMacAddressEquals(String macAddress) {
        if (macAddress == null || macAddress.length() == 0) throw new IllegalArgumentException("The macAddress argument is required");
        EntityManager em = Device.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM Device AS o WHERE o.macAddress = :macAddress", Long.class);
        q.setParameter("macAddress", macAddress);
        return ((Long) q.getSingleResult());
    }
    
    public static Long Device.countFindDevicesByNumeroIdEquals(String numeroId) {
        if (numeroId == null || numeroId.length() == 0) throw new IllegalArgumentException("The numeroId argument is required");
        EntityManager em = Device.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM Device AS o WHERE o.numeroId = :numeroId", Long.class);
        q.setParameter("numeroId", numeroId);
        return ((Long) q.getSingleResult());
    }
    
    public static TypedQuery<Device> Device.findDevicesByApplicationEquals(Application application) {
        if (application == null) throw new IllegalArgumentException("The application argument is required");
        EntityManager em = Device.entityManager();
        TypedQuery<Device> q = em.createQuery("SELECT o FROM Device AS o WHERE o.application = :application", Device.class);
        q.setParameter("application", application);
        return q;
    }
    
    public static TypedQuery<Device> Device.findDevicesByApplicationEquals(Application application, String sortFieldName, String sortOrder) {
        if (application == null) throw new IllegalArgumentException("The application argument is required");
        EntityManager em = Device.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM Device AS o WHERE o.application = :application");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<Device> q = em.createQuery(queryBuilder.toString(), Device.class);
        q.setParameter("application", application);
        return q;
    }
    
    public static TypedQuery<Device> Device.findDevicesByEppnInitEquals(String eppnInit) {
        if (eppnInit == null || eppnInit.length() == 0) throw new IllegalArgumentException("The eppnInit argument is required");
        EntityManager em = Device.entityManager();
        TypedQuery<Device> q = em.createQuery("SELECT o FROM Device AS o WHERE o.eppnInit = :eppnInit", Device.class);
        q.setParameter("eppnInit", eppnInit);
        return q;
    }
    
    public static TypedQuery<Device> Device.findDevicesByEppnInitEquals(String eppnInit, String sortFieldName, String sortOrder) {
        if (eppnInit == null || eppnInit.length() == 0) throw new IllegalArgumentException("The eppnInit argument is required");
        EntityManager em = Device.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM Device AS o WHERE o.eppnInit = :eppnInit");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<Device> q = em.createQuery(queryBuilder.toString(), Device.class);
        q.setParameter("eppnInit", eppnInit);
        return q;
    }
    
    public static TypedQuery<Device> Device.findDevicesByEppnInitLike(String eppnInit) {
        if (eppnInit == null || eppnInit.length() == 0) throw new IllegalArgumentException("The eppnInit argument is required");
        eppnInit = eppnInit.replace('*', '%');
        if (eppnInit.charAt(0) != '%') {
            eppnInit = "%" + eppnInit;
        }
        if (eppnInit.charAt(eppnInit.length() - 1) != '%') {
            eppnInit = eppnInit + "%";
        }
        EntityManager em = Device.entityManager();
        TypedQuery<Device> q = em.createQuery("SELECT o FROM Device AS o WHERE LOWER(o.eppnInit) LIKE LOWER(:eppnInit)", Device.class);
        q.setParameter("eppnInit", eppnInit);
        return q;
    }
    
    public static TypedQuery<Device> Device.findDevicesByEppnInitLike(String eppnInit, String sortFieldName, String sortOrder) {
        if (eppnInit == null || eppnInit.length() == 0) throw new IllegalArgumentException("The eppnInit argument is required");
        eppnInit = eppnInit.replace('*', '%');
        if (eppnInit.charAt(0) != '%') {
            eppnInit = "%" + eppnInit;
        }
        if (eppnInit.charAt(eppnInit.length() - 1) != '%') {
            eppnInit = eppnInit + "%";
        }
        EntityManager em = Device.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM Device AS o WHERE LOWER(o.eppnInit) LIKE LOWER(:eppnInit)");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<Device> q = em.createQuery(queryBuilder.toString(), Device.class);
        q.setParameter("eppnInit", eppnInit);
        return q;
    }
    
    public static TypedQuery<Device> Device.findDevicesByImeiEquals(String imei) {
        if (imei == null || imei.length() == 0) throw new IllegalArgumentException("The imei argument is required");
        EntityManager em = Device.entityManager();
        TypedQuery<Device> q = em.createQuery("SELECT o FROM Device AS o WHERE o.imei = :imei", Device.class);
        q.setParameter("imei", imei);
        return q;
    }
    
    public static TypedQuery<Device> Device.findDevicesByImeiEquals(String imei, String sortFieldName, String sortOrder) {
        if (imei == null || imei.length() == 0) throw new IllegalArgumentException("The imei argument is required");
        EntityManager em = Device.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM Device AS o WHERE o.imei = :imei");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<Device> q = em.createQuery(queryBuilder.toString(), Device.class);
        q.setParameter("imei", imei);
        return q;
    }
    
    public static TypedQuery<Device> Device.findDevicesByLocationAndEppnInitAndImeiEquals(String location, String eppnInit, String imei) {
        if (location == null || location.length() == 0) throw new IllegalArgumentException("The location argument is required");
        if (eppnInit == null || eppnInit.length() == 0) throw new IllegalArgumentException("The eppnInit argument is required");
        if (imei == null || imei.length() == 0) throw new IllegalArgumentException("The imei argument is required");
        EntityManager em = Device.entityManager();
        TypedQuery<Device> q = em.createQuery("SELECT o FROM Device AS o WHERE o.location = :location AND o.eppnInit = :eppnInit AND o.imei = :imei", Device.class);
        q.setParameter("location", location);
        q.setParameter("eppnInit", eppnInit);
        q.setParameter("imei", imei);
        return q;
    }
    
    public static TypedQuery<Device> Device.findDevicesByLocationAndEppnInitAndImeiEquals(String location, String eppnInit, String imei, String sortFieldName, String sortOrder) {
        if (location == null || location.length() == 0) throw new IllegalArgumentException("The location argument is required");
        if (eppnInit == null || eppnInit.length() == 0) throw new IllegalArgumentException("The eppnInit argument is required");
        if (imei == null || imei.length() == 0) throw new IllegalArgumentException("The imei argument is required");
        EntityManager em = Device.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM Device AS o WHERE o.location = :location AND o.eppnInit = :eppnInit AND o.imei = :imei");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<Device> q = em.createQuery(queryBuilder.toString(), Device.class);
        q.setParameter("location", location);
        q.setParameter("eppnInit", eppnInit);
        q.setParameter("imei", imei);
        return q;
    }
    
    public static TypedQuery<Device> Device.findDevicesByLocationAndEppnInitAndMacAddressEquals(String location, String eppnInit, String macAddress) {
        if (location == null || location.length() == 0) throw new IllegalArgumentException("The location argument is required");
        if (eppnInit == null || eppnInit.length() == 0) throw new IllegalArgumentException("The eppnInit argument is required");
        if (macAddress == null || macAddress.length() == 0) throw new IllegalArgumentException("The macAddress argument is required");
        EntityManager em = Device.entityManager();
        TypedQuery<Device> q = em.createQuery("SELECT o FROM Device AS o WHERE o.location = :location AND o.eppnInit = :eppnInit AND o.macAddress = :macAddress", Device.class);
        q.setParameter("location", location);
        q.setParameter("eppnInit", eppnInit);
        q.setParameter("macAddress", macAddress);
        return q;
    }
    
    public static TypedQuery<Device> Device.findDevicesByLocationAndEppnInitAndMacAddressEquals(String location, String eppnInit, String macAddress, String sortFieldName, String sortOrder) {
        if (location == null || location.length() == 0) throw new IllegalArgumentException("The location argument is required");
        if (eppnInit == null || eppnInit.length() == 0) throw new IllegalArgumentException("The eppnInit argument is required");
        if (macAddress == null || macAddress.length() == 0) throw new IllegalArgumentException("The macAddress argument is required");
        EntityManager em = Device.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM Device AS o WHERE o.location = :location AND o.eppnInit = :eppnInit AND o.macAddress = :macAddress");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<Device> q = em.createQuery(queryBuilder.toString(), Device.class);
        q.setParameter("location", location);
        q.setParameter("eppnInit", eppnInit);
        q.setParameter("macAddress", macAddress);
        return q;
    }
    
    public static TypedQuery<Device> Device.findDevicesByLocationEquals(String location) {
        if (location == null || location.length() == 0) throw new IllegalArgumentException("The location argument is required");
        EntityManager em = Device.entityManager();
        TypedQuery<Device> q = em.createQuery("SELECT o FROM Device AS o WHERE o.location = :location", Device.class);
        q.setParameter("location", location);
        return q;
    }
    
    public static TypedQuery<Device> Device.findDevicesByLocationEquals(String location, String sortFieldName, String sortOrder) {
        if (location == null || location.length() == 0) throw new IllegalArgumentException("The location argument is required");
        EntityManager em = Device.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM Device AS o WHERE o.location = :location");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<Device> q = em.createQuery(queryBuilder.toString(), Device.class);
        q.setParameter("location", location);
        return q;
    }
    
    public static TypedQuery<Device> Device.findDevicesByMacAddressEquals(String macAddress) {
        if (macAddress == null || macAddress.length() == 0) throw new IllegalArgumentException("The macAddress argument is required");
        EntityManager em = Device.entityManager();
        TypedQuery<Device> q = em.createQuery("SELECT o FROM Device AS o WHERE o.macAddress = :macAddress", Device.class);
        q.setParameter("macAddress", macAddress);
        return q;
    }
    
    public static TypedQuery<Device> Device.findDevicesByMacAddressEquals(String macAddress, String sortFieldName, String sortOrder) {
        if (macAddress == null || macAddress.length() == 0) throw new IllegalArgumentException("The macAddress argument is required");
        EntityManager em = Device.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM Device AS o WHERE o.macAddress = :macAddress");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<Device> q = em.createQuery(queryBuilder.toString(), Device.class);
        q.setParameter("macAddress", macAddress);
        return q;
    }
    
    public static TypedQuery<Device> Device.findDevicesByNumeroIdEquals(String numeroId) {
        if (numeroId == null || numeroId.length() == 0) throw new IllegalArgumentException("The numeroId argument is required");
        EntityManager em = Device.entityManager();
        TypedQuery<Device> q = em.createQuery("SELECT o FROM Device AS o WHERE o.numeroId = :numeroId", Device.class);
        q.setParameter("numeroId", numeroId);
        return q;
    }
    
    public static TypedQuery<Device> Device.findDevicesByNumeroIdEquals(String numeroId, String sortFieldName, String sortOrder) {
        if (numeroId == null || numeroId.length() == 0) throw new IllegalArgumentException("The numeroId argument is required");
        EntityManager em = Device.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM Device AS o WHERE o.numeroId = :numeroId");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<Device> q = em.createQuery(queryBuilder.toString(), Device.class);
        q.setParameter("numeroId", numeroId);
        return q;
    }
    
}
