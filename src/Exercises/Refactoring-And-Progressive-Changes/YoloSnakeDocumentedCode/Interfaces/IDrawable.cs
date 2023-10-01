namespace YoloSnake.Interfaces
{
    /// <summary>
    /// An interface, which holds the abstracted logic for drawing the snake body positions on the console
    /// </summary>
    public interface IDrawable
    {
        /// <summary>
        /// Definition of the method, responsible for the drawing logic, which accepts one parameter of type IDrawer
        /// </summary>
        /// <param name="drawer">parameter for drawing points</param>
        void Draw(IDrawer drawer);
    }
}
