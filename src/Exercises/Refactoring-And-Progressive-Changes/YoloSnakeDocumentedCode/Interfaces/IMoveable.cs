using YoloSnake.Enums;

namespace YoloSnake.Interfaces
{
    /// <summary>
    /// An interface, which holds the abstracted logic for moving the snake in a particular direction
    /// </summary>
    public interface IMovable
    {
        /// <summary>
        /// The moving direction - property of type Direction - an enum
        /// </summary>
        Direction Direction { get; }

        /// <summary>
        /// The move method definition
        /// </summary>
        void Move(); 

        /// <summary>
        /// 
        /// </summary>
        /// <param name="newDirection">Parameter for the new moving direction that will be set</param>
        void ChangeDirection(Direction newDirection);
    }
}
