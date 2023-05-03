import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Main {
    public static ArrayList<Animal> AnimalsSet = new ArrayList<>();

    public static void main(String[] args) {


        AnimalsSet.add(new Donkey("Wuf"));
        AnimalsSet.add(new Cat("Fluffy"));
        AnimalsSet.add(new Horse("Black Beauty"));
        while (true) {
            Scanner scanner = new Scanner(System.in);
            System.out.println("Please choose");
            System.out.println("1. Add an animal");
            System.out.println("2. Show commands");
            System.out.println("3. Add a command");
            System.out.println("4. Print list of all animals");
            System.out.println("5. Exit");

            Integer command = Integer.parseInt(scanner.nextLine());
            switch (command) {
                case 1:
                    AddAnimal(AnimalsSet);
                    break;
                case 2:
                    CommandList(AnimalsSet);
                    break;

                case 3:
                    AddCommand(AnimalsSet);
                    break;
                case 4:
                    PrintListOfAnimals(AnimalsSet);
                    break;
                case 5:
                    System.out.println("Bye!");
                    return;
                default:
                    System.out.println("Wrong call, try again");
            }


        }
    }

    public static void AddAnimal(ArrayList<Animal> Animals) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Please type");
        System.out.println("1 to Add cat");
        System.out.println("2 to Add dog");
        System.out.println("3 to Add hamster");
        System.out.println("4 to Add camel");
        System.out.println("5 to Add horse");
        System.out.println("6 to Add Donkey");
        int command;
        command = Integer.parseInt(scanner.nextLine());
        System.out.println("Type name");
        String name;
        name = scanner.nextLine();
        Animal animal;
        switch (command) {
            case 1:
                animal = new Cat(name);
                break;
            case 2:
                animal = new Dog(name);
                break;
            case 3:
                animal = new Hamster(name);
                break;
            case 4:
                animal = new Horse(name);
                break;
            case 5:
                animal = new Donkey(name);
                break;
            case 6:
                animal = new Camel(name);
                break;
            default:
                System.out.println("Wrong input");
                return;
        }
        Animals.add(animal);
        System.out.println("Animal added successfully.");
        System.out.println("");

    }

    public static void CommandList(ArrayList<Animal> Animals) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter name");
        String EnteredName;
        EnteredName = scanner.nextLine();
        Boolean founded = false;
        for (Animal animal : Animals) {
            if (EnteredName.equals(animal.getName())) {
                founded = true;
                List<String> commands = animal.getCommands();
                for (String command : commands) {
                    System.out.println(command);
                }
            }
        }
        if (!founded) {
            System.out.println("Animal is not founded");

        }
        System.out.println("");
    }

    public static void AddCommand(ArrayList<Animal> Animals) {

        System.out.println("Please type name");
        Scanner scanner = new Scanner(System.in);
        String EnteredName = scanner.nextLine();
        System.out.println("Please type a command");
        String command = scanner.nextLine();
        boolean founded = false;

        for (Animal animal : Animals) {
            if (EnteredName.equals(animal.getName())) {
                founded = true;
                animal.addCommands(command);
                System.out.println("Command added successfully");
            }
        }
        if (!founded) {
            System.out.println("Animal wasn't found, try again");
        }
        System.out.println("");
    }

    public static void PrintListOfAnimals(ArrayList<Animal> Animals) {
        for (Animal animal : Animals) {
            System.out.println(animal.getName());
        }
        System.out.println("");

    }

}

