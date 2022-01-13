using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace consciencia.DAO
{

    public class HistoriaDAO
    {
        public int? Id { get; set; }
        public string Nome { get; set; }
        public string Historia { get; set; }
        public DateTime? UpdatedAt { get; set; }
        public DateTime? DeletedAt { get; set; }
    }
}