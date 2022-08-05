package zoo_keeper;

public class Bat extends Mammal{
	
	public Bat() {
		super();
		this.energyLevel = 300;	
	}
	
	public void fly() {
		System.out.println("click click click");
		this.energyLevel -= 50;
	}
	public void eatHumans() {
		this.energyLevel += 25;
	}
	
	public void attackTown() {
		System.out.println("Boom!");
		this.energyLevel -= 100;
	}
	
}
