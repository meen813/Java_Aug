package zoo_keeper;

public abstract class Mammal {
	
	protected int energyLevel;
	
	
	public Mammal() {
		this.energyLevel = 100;
	}
	
	public void displayEnergy() {
		System.out.println(energyLevel);
	}


}
