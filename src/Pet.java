import java.util.List;

public class Pet implements Animal {
    String name;
    List<String> commands;

    public Pet(String name) {
        this.name = name;
        this.commands = null;
    }

    @Override
    public List<String> addCommands(String command) {
        commands.add(command);
        return commands;
    }

    @Override
    public List<String> getCommands() {
        return null;
    }

    public String getName() {
        return name;
    }

}

