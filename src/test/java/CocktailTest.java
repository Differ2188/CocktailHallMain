import compMVC.model.cocktail.Cocktail;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext-test.xml"})
public class CocktailTest {

    @Autowired
    private ApplicationContext applicationContext;

    @Test
    public void sampleTest() {
        Cocktail cocktail = applicationContext.getBean("cocktailDAO", Cocktail.class);
        Assert.assertNotNull(cocktail);

        cocktail = (Cocktail) applicationContext.getBean("cocktailDAO");
        Assert.assertNotNull(cocktail);

        Assert.assertEquals(cocktail.getName(), "Б52");

    }
}
