package compMVC.model.cocktail;

import javax.persistence.*;


@Entity
@Table(name = "cocktail")
public class Cocktail {
    private Integer id;
    private String name;
    private String nameFirstIngr;
    private String nameSecondIngr;
    private String nameThirdIngr;
    public Cocktail() {
    }

    public Cocktail(String name, String nameFirstIngr, String nameSecondIngr, String nameThirdIngr) {
        this.name = name;
        this.nameFirstIngr = nameFirstIngr;
        this.nameSecondIngr = nameSecondIngr;
        this.nameThirdIngr = nameThirdIngr;
    }
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
    @Column(name = "name",unique = true, nullable = false)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Column(name = "nameFirstIngr")
    public String getNameFirstIngr() {
        return nameFirstIngr;
    }

    public void setNameFirstIngr(String nameFirstIngr) {
        this.nameFirstIngr = nameFirstIngr;
    }

    @Column(name = "nameSecondIngr")
    public String getNameSecondIngr() {
        return nameSecondIngr;
    }

    public void setNameSecondIngr(String nameSecondIngr) {
        this.nameSecondIngr = nameSecondIngr;
    }

    @Column(name = "nameThirdIngr")
    public String getNameThirdIngr() {
        return nameThirdIngr;
    }

    public void setNameThirdIngr(String nameThirdIngr) {
        this.nameThirdIngr = nameThirdIngr;
    }
}
