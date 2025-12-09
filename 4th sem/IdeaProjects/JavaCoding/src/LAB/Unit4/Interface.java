package LAB.Unit4;
// Define an interface
interface Player {
    int id = 10; // Constant field (public, static, and final by default)
    void move(); // Abstract method (no method body)
}

// Implement the interface
class ChessPlayer implements Player {
    @Override
    public void move() {
        System.out.println("Chess player makes a move.");
    }
}

public class Interface{
    public static void main(String[] args) {
        ChessPlayer chessPlayer = new ChessPlayer();
        chessPlayer.move(); // Output: "Chess player makes a move."
        System.out.println("Player ID: " + Player.id); // Output: "Player ID: 10"
    }
}


