﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Antlr4.Runtime.Misc;
using Antlr4.Runtime.Tree;
using System.IO;
using coolc.Visitors;
using coolc.CodeGen;

#pragma warning disable CS1591 // Missing XML comment for publicly visible type or member
#pragma warning disable CS3021 // Type or member does not need a CLSCompliant attribute because the assembly does not have a CLSCompliant attribute

namespace coolc.NewSem
{
    public class TypeVisitor : CoolBaseVisitor<Node>
    {
        #region Fields & Properties
        
        public ProgramNode Root { get; private set; }
        public string Filename { get; private set; }

        int stringcount = 0;

        #endregion
        public TypeVisitor()
        {

        }

        public void MakeSymbolTable(IParseTree tree)
        {
            SymbolTable.Initialize();
            Visit(tree);
            var b = Root.CheckSemantic();
        }
        public override Node Visit(IParseTree tree)
        {
            return base.Visit(tree);
        }
        public override string ToString()
        {
            string sol = "";
            foreach (var x in SymbolTable.Classes)
            {
                sol += (x.Key + "\n");
                foreach (var y in x.Value.Attributes)
                {
                    sol += ("\t" + y.Key + "->" + y.Value.Name + ":" + y.Value.GetType() + "\n");
                }
                foreach (var y in x.Value.Methods)
                {
                    sol += ("\t" + y.Key + ":" + y.Value.GetType().Name + "(");
                    foreach (var z in y.Value.Params)
                        sol += (z.Value.Name + ":" + z.Value.GetType().Name);
                    sol += ")" + "\n";

                    //foreach (var w in y.Value.Variables)
                    //{
                    //    sol += (y.Key + "->" + y.Value.Name + ":" + y.Value.Type + "\n\t" + w.Value.Name + ":" + w.Value.Type + ")");

                    //}
                }
            }
            return sol;
        }
        
        public override Node VisitChildren(IRuleNode node)
        {
            NodeList result = new NodeList();
            int n = node.ChildCount;
            for (int i = 0; i < n; i++)
            {
                if (!ShouldVisitNextChild(node, result))
                {
                    break;
                }
                IParseTree c = node.GetChild(i);
                Node childResult = c.Accept(this);
                if (childResult==null)
                    continue;
                result.Childs.Add(childResult);
            }
            return result;
        }

        public override Node VisitProgram([NotNull] CoolParser.ProgramContext context)
        {
            var cl = context.classdef();
            int c = 0;
            //TODO improve this:
            /* 
             * in here I do an n^2 iteration through the classdef [] s 
             * n order to add the classes in order of dependencies
             * meaning this to never add a class before it's parent
             * I mean I colud sure add the class without parent and then 
             * when it comes up update it but this way seems to be better 
             * since the classes have now a partial order :S ?
             */
            for (int j = 0; j < cl.Length; j++)
                for (int i = 0; i < cl.Length; i++)
                {
                    /* In antlr when there are two IToken of the same type in a single rule production
                     * they provide a method theat returns an array of that kind of tokens
                     * 
                     * this is an example: TYPE()=> ITerminalNode[], TYPE(int i) => ith ITerminalNode 
                     */
                    var pname = "Object";
                    if (cl[i].TYPE(1) != null)// if there is a type from wich this class inherits
                    {
                        pname = cl[i].TYPE(1).GetText();// take it
                    }
                    //var f= s[i].TYPE();
                    var name = cl[i].TYPE(0).GetText();// also take your name
                    if (SymbolTable.Classes.ContainsKey(pname) && !(SymbolTable.Classes.ContainsKey(name)))// If you know my father, and not myself
                    {
                        SymbolTable.Classes.Add(name, new ClassNode(name, SymbolTable.Classes[pname]));//let me introduce myself
                                                                                                   //b[i] = true;
                        c++;
                        //if (c == cl.Length)
                        //    return VisitChildren(context);
                    }
                }
            var s = VisitChildren(context);
            this.Root = new ProgramNode(context, s);
            return this.Root;
        }

        public override Node VisitClassdef([NotNull] CoolParser.ClassdefContext context)
        {
            var s = VisitChildren(context);
            var name = context.TYPE(0).GetText();
            var n = SymbolTable.Classes[name];
            n.Context = context;
            n.Childs = s.Childs;
            return n;
            //return new ClassNode(context, s);
        }

        public override Node VisitMethodFeature([NotNull] CoolParser.MethodFeatureContext context)
        {
            var s = VisitChildren(context);
            return new MethodNode(context, s);
        }

        public override Node VisitAttribFeature([NotNull] CoolParser.AttribFeatureContext context)
        {
            var s = VisitChildren(context);
            return new AttributeNode(context, s);
        }

        public override Node VisitFormal([NotNull] CoolParser.FormalContext context)
        {
            var s = VisitChildren(context);
            return new FormalNode(context, s);
        }

        public override Node VisitStringExp([NotNull] CoolParser.StringExpContext context)
        {
            //Data.Add("string" + stringcount++ + ":" + "\t.asciiz\t" + context.STRING().GetText());
            SymbolTable.StringVariables[context.STRING().GetText()] = stringcount;
            var s = VisitChildren(context);
            return new StringNode(context, s);
        }

        #region Expressions

        public override Node VisitNewTypeExp([NotNull] CoolParser.NewTypeExpContext context)
        {
            var s = VisitChildren(context);

            return new NewTypeNode(context, s);
        }
        public override Node VisitWhileExp([NotNull] CoolParser.WhileExpContext context)
        {
            var s = VisitChildren(context);
            return new WhileNode(context, s);
        }
        public override Node VisitBracedExp([NotNull] CoolParser.BracedExpContext context)
        {
            var s = VisitChildren(context);
            return new BracedNode(context, s);
        }
        public override Node VisitTildeExp([NotNull] CoolParser.TildeExpContext context)
        {
            var s = VisitChildren(context);
            return new TildeNode(context, s);
        }
        public override Node VisitIntExp([NotNull] CoolParser.IntExpContext context)
        {
            var s = VisitChildren(context);
            return new IntNode(context, s);
        }
        public override Node VisitLessEqualExp([NotNull] CoolParser.LessEqualExpContext context)
        {
            var s = VisitChildren(context);
            return new LessEqualNode(context, s);
        }
        public override Node VisitIdentifierExp([NotNull] CoolParser.IdentifierExpContext context)
        {
            var s = VisitChildren(context);
            return new IdentifierNode(context, s);
        }
        public override Node VisitAtsimExp([NotNull] CoolParser.AtsimExpContext context)
        {
            var s = VisitChildren(context);
            return new AtsimNode(context, s);
        }
        public override Node VisitBoolExp([NotNull] CoolParser.BoolExpContext context)
        {
            var s = VisitChildren(context);
            return new BoolNode(context, s);
        }
        public override Node VisitCaseExp([NotNull] CoolParser.CaseExpContext context)
        {
            var s = VisitChildren(context);
            return new CaseNode(context, s);
        }
        public override Node VisitNotExp([NotNull] CoolParser.NotExpContext context)
        {
            var s = VisitChildren(context);
            return new NotNode(context, s);
        }
        public override Node VisitIsvoidExp([NotNull] CoolParser.IsvoidExpContext context)
        {
            var s = VisitChildren(context);
            return new IsvoidNode(context, s);
        }
        public override Node VisitParentExp([NotNull] CoolParser.ParentExpContext context)
        {
            var s = VisitChildren(context);
            return new ParentNode(context, s);
        }
        public override Node VisitAssignExp([NotNull] CoolParser.AssignExpContext context)
        {
            var s = VisitChildren(context);
            return new AssignNode(context, s);
        }
        public override Node VisitIfExp([NotNull] CoolParser.IfExpContext context)
        {
            var s = VisitChildren(context);
            return new IfNode(context, s);
        }
        public override Node VisitLetExp([NotNull] CoolParser.LetExpContext context)
        {
            var s = VisitChildren(context);
            return new LetNode(context, s);
        }
        public override Node VisitMethodCallExp([NotNull] CoolParser.MethodCallExpContext context)
        {
            var s = VisitChildren(context);
            return new MethodCallNode(context, s);
        }
        public override Node VisitEqualsExp([NotNull] CoolParser.EqualsExpContext context)
        {
            var s = VisitChildren(context);
            return new EqualsNode(context, s);
        }
        public override Node VisitLessExp([NotNull] CoolParser.LessExpContext context)
        {
            var s = VisitChildren(context);
            return new LessNode(context, s);
        }
        public override Node VisitInfixExp([NotNull] CoolParser.InfixExpContext context)
        {
            var s = VisitChildren(context);
            return new InfixNode(context, s);
        }

        #endregion
    }
}
