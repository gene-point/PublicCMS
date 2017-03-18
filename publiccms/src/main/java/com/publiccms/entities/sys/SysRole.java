package com.publiccms.entities.sys;

// Generated 2016-1-19 11:28:06 by Hibernate Tools 4.3.1

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;

import static javax.persistence.GenerationType.IDENTITY;

import javax.persistence.Id;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.sanluan.common.generator.annotation.GeneratorColumn;

/**
 * SystemRole generated by hbm2java
 */
@Entity
@Table(name = "sys_role")
public class SysRole implements java.io.Serializable {
    /**
     * 
     */
    private static final long serialVersionUID = 1L;
    @GeneratorColumn(title = "ID")
    private Integer id;
    @GeneratorColumn(title = "站点", condition = true)
    @JsonIgnore
    private int siteId;
    @GeneratorColumn(title = "名称")
    private String name;
    @GeneratorColumn(title = "拥有全部权限")
    private boolean ownsAllRight;
    @GeneratorColumn(title = "显示全部模块")
    private boolean showAllMoudle;

    public SysRole() {
    }

    public SysRole(int siteId, String name, boolean ownsAllRight, boolean showAllMoudle) {
        this.siteId = siteId;
        this.name = name;
        this.ownsAllRight = ownsAllRight;
        this.showAllMoudle = showAllMoudle;
    }

    @Id
    @GeneratedValue(strategy = IDENTITY)
    @Column(name = "id", unique = true, nullable = false)
    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @Column(name = "site_id", nullable = false)
    public int getSiteId() {
        return this.siteId;
    }

    public void setSiteId(int siteId) {
        this.siteId = siteId;
    }

    @Column(name = "name", nullable = false, length = 50)
    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Column(name = "owns_all_right", nullable = false)
    public boolean isOwnsAllRight() {
        return this.ownsAllRight;
    }

    public void setOwnsAllRight(boolean ownsAllRight) {
        this.ownsAllRight = ownsAllRight;
    }

    @Column(name = "show_all_moudle", nullable = false)
    public boolean isShowAllMoudle() {
        return this.showAllMoudle;
    }

    public void setShowAllMoudle(boolean showAllMoudle) {
        this.showAllMoudle = showAllMoudle;
    }

}