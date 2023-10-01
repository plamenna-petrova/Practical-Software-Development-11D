using YoloSnake.Enums;

namespace YoloSnake.Interfaces
{
    public interface IMovable
    {
        Direction Direction { get; }

        void Move(); 

        void ChangeDirection(Direction newDirection);
    }
}
