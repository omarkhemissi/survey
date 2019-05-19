using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Linq;
using System.Linq.Expressions;

namespace REPORT.Services
{
    public static class IQueryableExtension
    {
        public static IQueryable<T> IQueryableSort<T>(this IQueryable<T> source, string ordering, System.Web.UI.WebControls.SortDirection direction)
        {
            var type = typeof(T);
            var property = type.GetProperty(ordering);
            var parameter = Expression.Parameter(type, "p");
            var propertyAccess = Expression.MakeMemberAccess(parameter, property);
            var orderByExp = Expression.Lambda(propertyAccess, parameter);
            MethodCallExpression resultExp;
            if (direction == System.Web.UI.WebControls.SortDirection.Ascending)
                resultExp = Expression.Call(typeof(Queryable), "OrderBy", new Type[] { type, property.PropertyType }, source.Expression, Expression.Quote(orderByExp));
            else
                resultExp = Expression.Call(typeof(Queryable), "OrderByDescending", new Type[] { type, property.PropertyType }, source.Expression, Expression.Quote(orderByExp));

            return source.Provider.CreateQuery<T>(resultExp);
        }

        public static IQueryable<T> Paginate<T>(this IQueryable<T> source, int skip, int take)
        {
            return source.Skip(skip).Take(take);
        }

        //public static IEnumerable<object[]> ExecuteQuery(

        //    this DataContext ctx, string query)
        //{

        //    using (DbCommand cmd = ctx.Connection.CreateCommand())
        //    {

        //        cmd.CommandText = query;

        //        ctx.Connection.Open();

        //        using (DbDataReader rdr =

        //            cmd.ExecuteReader(CommandBehavior.CloseConnection))
        //        {

        //            while (rdr.Read())
        //            {

        //                object[] res = new object[rdr.FieldCount];

        //                rdr.GetValues(res);

        //                yield return res;

        //            }

        //        }

        //    }

        //}


    }

}
