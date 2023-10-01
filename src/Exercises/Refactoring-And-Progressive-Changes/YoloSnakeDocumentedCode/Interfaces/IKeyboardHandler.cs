using System;

namespace YoloSnake.Interfaces
{
    /// <summary>
    /// An interface, which holds the abstracted logic for pressed keys by the user and their availability
    /// </summary>
    public interface IKeyboardHandler
    {
        /// <summary>
        /// Property of type ConsoleKey
        /// </summary>
        ConsoleKey PressedKey { get; }

        /// <summary>
        /// Boolean property that indicated whether the pressed key is available
        /// </summary>
        bool IsKeyAvailable { get; }
    }
}
