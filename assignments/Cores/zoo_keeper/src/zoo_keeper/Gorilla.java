package zoo_keeper;

public class Gorilla extends Mammal{
	
	public Gorilla() {
		super();
		this.energyLevel = 200;
		}

	public void throwSomething() {
		System.out.println("The Gorilla has thrown something!");
		this.energyLevel -= 5;
	}
	
	public void eatBananas() {
		System.out.println("The Gorilla has eaten a banana.");
		this.energyLevel += 10;
	}
	
	public void climb() {
		System.out.println("The Gorilla has climed a tree.");
		this.energyLevel -= 10;
	}
}
	
