﻿using coolc.Visitors;
using System.Collections.Generic;
#pragma warning disable CS1591 // Missing XML comment for publicly visible type or member
#pragma warning disable CS3021 // Type or member does not need a CLSCompliant attribute because the assembly does not have a CLSCompliant attribute
namespace coolc.CodeGen
{
    internal class EqualsNode : Node
    {
        private CoolParser.EqualsExpContext context;
        private Node s;
		private Node lhs;
		private Node rhs;

		public EqualsNode(CoolParser.EqualsExpContext context, Node s) : base(s.Childs)
        {
            this.context = context;
            this.s = s;
			this.lhs = Childs[0];
			this.rhs = Childs[1];

        }
		public override string GenerateCode()
		{
			string result = "";
			result += lhs.GenerateCode();
			string lhsReg = MIPS.LastReg();

			result += rhs.GenerateCode();
			string rhsReg = MIPS.LastReg();

			result += MIPS.Emit(MIPS.Opcodes.seq, rhsReg, lhsReg, rhsReg);

			return result;
		}
		public int TryGetValue()
		{
			try
			{
				int a = ((dynamic)Childs[0]).TryGetValue();
				return a == ((dynamic)Childs[1]).TryGetValue() ? 1 : 0;
			}
			catch { }
			return 0;
		}
	}
}