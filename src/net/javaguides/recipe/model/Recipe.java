package javaguides.recipe.model;

import java.io.Serializable;


public class Recipe implements Serializable {
	private static final long serialVersionUID = 1L;
	private Integer id;
    private String recipeName;
    private String ingridient;
    private String step;
    private Integer userId;
    
    public Recipe(String recipeName, String ingridient, String step) {
    	super();
    	this.recipeName = recipeName;
    	this.ingridient = ingridient;
    	this.step = step;
    }
    
    public Recipe(Integer id, String recipeName, String ingridient, String step, Integer userId) {
    	super();
    	this.id = id;
    	this.recipeName = recipeName;
    	this.ingridient = ingridient;
    	this.step = step;
    	this.userId = userId;
    }
    
    public Recipe(Integer id, String recipeName, String ingridient, String step) {
    	super();
    	this.id = id;
    	this.recipeName = recipeName;
    	this.ingridient = ingridient;
    	this.step = step;
    }
    
    public Integer getId() {
    	return id;
    }
    
    public String getRecipeName() {
        return recipeName;
    }
    public void setRecipeName(String name) {
        this.recipeName = name;
    }
    public String getIngridient() {
        return ingridient;
    }
    public void setIngridient(String ingridient) {
        this.ingridient = ingridient;
    }
    public String getStep() {
        return step;
    }   
    public void setStep(String step) {
        this.step = step;
    }
    public Integer getUserId() {
        return userId;
    }   
    public void setUserId(Integer userId) {
        this.userId = userId;
    }
}
