using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;

namespace MiniORM
{
    internal static class ReflectionHelper
    {
        public static void ReplaceBackingField(object sourceObject, string propertyName, object targetObject)
        {
            var backingField = sourceObject.GetType()
                .GetFields(BindingFlags.Instance | BindingFlags.NonPublic | BindingFlags.SetField)
                .First(fi => fi.Name == $"<{propertyName}>k__BackingField");

            backingField.SetValue(sourceObject, targetObject);
        }

        public static bool HasAttribute<T>(this MemberInfo memberInfo) where T : Attribute
        {
            bool hasAttribute = memberInfo.GetCustomAttribute<T>() != null;
            return hasAttribute;
        }
    }
}
