package com.spawpaw.ssm.entity;

public class Monitorinfo {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column monitorinfo.id
     *
     * @mbggenerated Mon Feb 19 12:24:04 CST 2018
     */
    private Integer id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column monitorinfo.name
     *
     * @mbggenerated Mon Feb 19 12:24:04 CST 2018
     */
    private String name;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column monitorinfo.password
     *
     * @mbggenerated Mon Feb 19 12:24:04 CST 2018
     */
    private String password;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column monitorinfo.state
     *
     * @mbggenerated Mon Feb 19 12:24:04 CST 2018
     */
    private Integer state;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column monitorinfo.id
     *
     * @return the value of monitorinfo.id
     *
     * @mbggenerated Mon Feb 19 12:24:04 CST 2018
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column monitorinfo.id
     *
     * @param id the value for monitorinfo.id
     *
     * @mbggenerated Mon Feb 19 12:24:04 CST 2018
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column monitorinfo.name
     *
     * @return the value of monitorinfo.name
     *
     * @mbggenerated Mon Feb 19 12:24:04 CST 2018
     */
    public String getName() {
        return name;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column monitorinfo.name
     *
     * @param name the value for monitorinfo.name
     *
     * @mbggenerated Mon Feb 19 12:24:04 CST 2018
     */
    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column monitorinfo.password
     *
     * @return the value of monitorinfo.password
     *
     * @mbggenerated Mon Feb 19 12:24:04 CST 2018
     */
    public String getPassword() {
        return password;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column monitorinfo.password
     *
     * @param password the value for monitorinfo.password
     *
     * @mbggenerated Mon Feb 19 12:24:04 CST 2018
     */
    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column monitorinfo.state
     *
     * @return the value of monitorinfo.state
     *
     * @mbggenerated Mon Feb 19 12:24:04 CST 2018
     */
    public Integer getState() {
        return state;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column monitorinfo.state
     *
     * @param state the value for monitorinfo.state
     *
     * @mbggenerated Mon Feb 19 12:24:04 CST 2018
     */
    public void setState(Integer state) {
        this.state = state;
    }
}