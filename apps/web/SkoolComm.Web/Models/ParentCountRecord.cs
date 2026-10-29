using Supabase.Postgrest.Attributes;
using Supabase.Postgrest.Models;

namespace SkoolComm.Web.Models;

[Table("parent")]
public sealed class ParentCountRecord : BaseModel
{
    [PrimaryKey("ParentID", false)]
    public int ParentId { get; set; }
}
