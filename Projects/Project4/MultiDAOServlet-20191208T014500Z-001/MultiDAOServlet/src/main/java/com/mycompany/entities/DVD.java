package com.mycompany.entities;

import javax.json.bind.annotation.JsonbPropertyOrder;
import javax.json.bind.config.PropertyOrderStrategy;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "", propOrder = {
    "id","imdbRef", "title", "releaseyear", "keyword1", "keyword2", "metascore", "rottenTomatoes"
})
@XmlRootElement(name = "dvd")
@JsonbPropertyOrder(PropertyOrderStrategy.ANY)
public class DVD {
    @XmlAttribute
    private int id;
    private String imdbRef;
    private String title;
    private int releaseyear;
    private String keyword1;
    private String keyword2;
    private int metascore;
    private int rottenTomatoes;

    public DVD() {
    }

    public DVD(int id, String imdbRef, String title, int releaseyear, String keyword1,String keyword2,int metascore,int rottenTomatoes) {
        this.id = id;
        this.imdbRef = imdbRef;
        this.title = title;
        this.releaseyear = releaseyear;
        this.keyword1 = keyword1;
        this.keyword2 = keyword2;
        this.metascore = metascore;
        this.rottenTomatoes = rottenTomatoes;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getReleaseyear() {
        return releaseyear;
    }

    public void setReleaseyear(int releaseyear) {
        this.releaseyear = releaseyear;
    }

    public String getImdbRef() {
        return imdbRef;
    }

    public void setImdbRef(String imdbRef) {
        this.imdbRef = imdbRef;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getKeyword1() {
        return keyword1;
    }

    public void setKeyword1(String keyword1) {
        this.keyword1 = keyword1;
    }

    public String getKeyword2() {
        return keyword2;
    }

    public void setKeyword2(String keyword2) {
        this.keyword2 = keyword2;
    }

    public int getMetascore() {
        return metascore;
    }

    public void setMetascore(int metascore) {
        this.metascore = metascore;
    }

    public int getRottenTomatoes() {
        return rottenTomatoes;
    }

    public void setRottenTomatoes(int rottenTomatoes) {
        this.rottenTomatoes = rottenTomatoes;
    }


    

}
