namespace Heima8.OA.Workflow {
    
    #line 15 "D:\Learn\C# Net\ASP.NET\MVC\资料\CODE\Heima8.OA\Heima8.OA.Workflow\FincalActivity.xaml"
    using System;
    
    #line default
    #line hidden
    
    #line 1 "D:\Learn\C# Net\ASP.NET\MVC\资料\CODE\Heima8.OA\Heima8.OA.Workflow\FincalActivity.xaml"
    using System.Collections;
    
    #line default
    #line hidden
    
    #line 16 "D:\Learn\C# Net\ASP.NET\MVC\资料\CODE\Heima8.OA\Heima8.OA.Workflow\FincalActivity.xaml"
    using System.Collections.Generic;
    
    #line default
    #line hidden
    
    #line 1 "D:\Learn\C# Net\ASP.NET\MVC\资料\CODE\Heima8.OA\Heima8.OA.Workflow\FincalActivity.xaml"
    using System.Activities;
    
    #line default
    #line hidden
    
    #line 1 "D:\Learn\C# Net\ASP.NET\MVC\资料\CODE\Heima8.OA\Heima8.OA.Workflow\FincalActivity.xaml"
    using System.Activities.Expressions;
    
    #line default
    #line hidden
    
    #line 1 "D:\Learn\C# Net\ASP.NET\MVC\资料\CODE\Heima8.OA\Heima8.OA.Workflow\FincalActivity.xaml"
    using System.Activities.Statements;
    
    #line default
    #line hidden
    
    #line 17 "D:\Learn\C# Net\ASP.NET\MVC\资料\CODE\Heima8.OA\Heima8.OA.Workflow\FincalActivity.xaml"
    using System.Data;
    
    #line default
    #line hidden
    
    #line 18 "D:\Learn\C# Net\ASP.NET\MVC\资料\CODE\Heima8.OA\Heima8.OA.Workflow\FincalActivity.xaml"
    using System.Linq;
    
    #line default
    #line hidden
    
    #line 19 "D:\Learn\C# Net\ASP.NET\MVC\资料\CODE\Heima8.OA\Heima8.OA.Workflow\FincalActivity.xaml"
    using System.Text;
    
    #line default
    #line hidden
    
    #line 1 "D:\Learn\C# Net\ASP.NET\MVC\资料\CODE\Heima8.OA\Heima8.OA.Workflow\FincalActivity.xaml"
    using System.Activities.XamlIntegration;
    
    #line default
    #line hidden
    
    
    public partial class FincalActivity : System.Activities.XamlIntegration.ICompiledExpressionRoot {
        
        private System.Activities.Activity rootActivity;
        
        private object dataContextActivities;
        
        private bool forImplementation = true;
        
        [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Activities", "4.0.0.0")]
        [System.ComponentModel.BrowsableAttribute(false)]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        public string GetLanguage() {
            return "C#";
        }
        
        [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Activities", "4.0.0.0")]
        [System.ComponentModel.BrowsableAttribute(false)]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        public object InvokeExpression(int expressionId, System.Collections.Generic.IList<System.Activities.LocationReference> locations, System.Activities.ActivityContext activityContext) {
            if ((this.rootActivity == null)) {
                this.rootActivity = this;
            }
            if ((this.dataContextActivities == null)) {
                this.dataContextActivities = FincalActivity_TypedDataContext3.GetDataContextActivitiesHelper(this.rootActivity, this.forImplementation);
            }
            if ((expressionId == 0)) {
                System.Activities.XamlIntegration.CompiledDataContext[] cachedCompiledDataContext = FincalActivity_TypedDataContext3.GetCompiledDataContextCacheHelper(this.dataContextActivities, activityContext, this.rootActivity, this.forImplementation, 9);
                if ((cachedCompiledDataContext[0] == null)) {
                    cachedCompiledDataContext[0] = new FincalActivity_TypedDataContext3(locations, activityContext, true);
                }
                FincalActivity_TypedDataContext3 refDataContext0 = ((FincalActivity_TypedDataContext3)(cachedCompiledDataContext[0]));
                return refDataContext0.GetLocation<string>(refDataContext0.ValueType___Expr0Get, refDataContext0.ValueType___Expr0Set, expressionId, this.rootActivity, activityContext);
            }
            if ((expressionId == 1)) {
                System.Activities.XamlIntegration.CompiledDataContext[] cachedCompiledDataContext = FincalActivity_TypedDataContext4_ForReadOnly.GetCompiledDataContextCacheHelper(this.dataContextActivities, activityContext, this.rootActivity, this.forImplementation, 9);
                if ((cachedCompiledDataContext[1] == null)) {
                    cachedCompiledDataContext[1] = new FincalActivity_TypedDataContext4_ForReadOnly(locations, activityContext, true);
                }
                FincalActivity_TypedDataContext4_ForReadOnly valDataContext1 = ((FincalActivity_TypedDataContext4_ForReadOnly)(cachedCompiledDataContext[1]));
                return valDataContext1.ValueType___Expr1Get();
            }
            if ((expressionId == 2)) {
                System.Activities.XamlIntegration.CompiledDataContext[] cachedCompiledDataContext = FincalActivity_TypedDataContext4.GetCompiledDataContextCacheHelper(this.dataContextActivities, activityContext, this.rootActivity, this.forImplementation, 9);
                if ((cachedCompiledDataContext[2] == null)) {
                    cachedCompiledDataContext[2] = new FincalActivity_TypedDataContext4(locations, activityContext, true);
                }
                FincalActivity_TypedDataContext4 refDataContext2 = ((FincalActivity_TypedDataContext4)(cachedCompiledDataContext[2]));
                return refDataContext2.GetLocation<int>(refDataContext2.ValueType___Expr2Get, refDataContext2.ValueType___Expr2Set, expressionId, this.rootActivity, activityContext);
            }
            if ((expressionId == 3)) {
                System.Activities.XamlIntegration.CompiledDataContext[] cachedCompiledDataContext = FincalActivity_TypedDataContext4_ForReadOnly.GetCompiledDataContextCacheHelper(this.dataContextActivities, activityContext, this.rootActivity, this.forImplementation, 9);
                if ((cachedCompiledDataContext[1] == null)) {
                    cachedCompiledDataContext[1] = new FincalActivity_TypedDataContext4_ForReadOnly(locations, activityContext, true);
                }
                FincalActivity_TypedDataContext4_ForReadOnly valDataContext3 = ((FincalActivity_TypedDataContext4_ForReadOnly)(cachedCompiledDataContext[1]));
                return valDataContext3.ValueType___Expr3Get();
            }
            if ((expressionId == 4)) {
                System.Activities.XamlIntegration.CompiledDataContext[] cachedCompiledDataContext = FincalActivity_TypedDataContext4_ForReadOnly.GetCompiledDataContextCacheHelper(this.dataContextActivities, activityContext, this.rootActivity, this.forImplementation, 9);
                if ((cachedCompiledDataContext[1] == null)) {
                    cachedCompiledDataContext[1] = new FincalActivity_TypedDataContext4_ForReadOnly(locations, activityContext, true);
                }
                FincalActivity_TypedDataContext4_ForReadOnly valDataContext4 = ((FincalActivity_TypedDataContext4_ForReadOnly)(cachedCompiledDataContext[1]));
                return valDataContext4.ValueType___Expr4Get();
            }
            if ((expressionId == 5)) {
                System.Activities.XamlIntegration.CompiledDataContext[] cachedCompiledDataContext = FincalActivity_TypedDataContext4.GetCompiledDataContextCacheHelper(this.dataContextActivities, activityContext, this.rootActivity, this.forImplementation, 9);
                if ((cachedCompiledDataContext[2] == null)) {
                    cachedCompiledDataContext[2] = new FincalActivity_TypedDataContext4(locations, activityContext, true);
                }
                FincalActivity_TypedDataContext4 refDataContext5 = ((FincalActivity_TypedDataContext4)(cachedCompiledDataContext[2]));
                return refDataContext5.GetLocation<string>(refDataContext5.ValueType___Expr5Get, refDataContext5.ValueType___Expr5Set, expressionId, this.rootActivity, activityContext);
            }
            if ((expressionId == 6)) {
                System.Activities.XamlIntegration.CompiledDataContext[] cachedCompiledDataContext = FincalActivity_TypedDataContext4_ForReadOnly.GetCompiledDataContextCacheHelper(this.dataContextActivities, activityContext, this.rootActivity, this.forImplementation, 9);
                if ((cachedCompiledDataContext[1] == null)) {
                    cachedCompiledDataContext[1] = new FincalActivity_TypedDataContext4_ForReadOnly(locations, activityContext, true);
                }
                FincalActivity_TypedDataContext4_ForReadOnly valDataContext6 = ((FincalActivity_TypedDataContext4_ForReadOnly)(cachedCompiledDataContext[1]));
                return valDataContext6.ValueType___Expr6Get();
            }
            if ((expressionId == 7)) {
                System.Activities.XamlIntegration.CompiledDataContext[] cachedCompiledDataContext = FincalActivity_TypedDataContext4.GetCompiledDataContextCacheHelper(this.dataContextActivities, activityContext, this.rootActivity, this.forImplementation, 9);
                if ((cachedCompiledDataContext[2] == null)) {
                    cachedCompiledDataContext[2] = new FincalActivity_TypedDataContext4(locations, activityContext, true);
                }
                FincalActivity_TypedDataContext4 refDataContext7 = ((FincalActivity_TypedDataContext4)(cachedCompiledDataContext[2]));
                return refDataContext7.GetLocation<string>(refDataContext7.ValueType___Expr7Get, refDataContext7.ValueType___Expr7Set, expressionId, this.rootActivity, activityContext);
            }
            if ((expressionId == 8)) {
                System.Activities.XamlIntegration.CompiledDataContext[] cachedCompiledDataContext = FincalActivity_TypedDataContext5.GetCompiledDataContextCacheHelper(this.dataContextActivities, activityContext, this.rootActivity, this.forImplementation, 9);
                if ((cachedCompiledDataContext[3] == null)) {
                    cachedCompiledDataContext[3] = new FincalActivity_TypedDataContext5(locations, activityContext, true);
                }
                FincalActivity_TypedDataContext5 refDataContext8 = ((FincalActivity_TypedDataContext5)(cachedCompiledDataContext[3]));
                return refDataContext8.GetLocation<string>(refDataContext8.ValueType___Expr8Get, refDataContext8.ValueType___Expr8Set, expressionId, this.rootActivity, activityContext);
            }
            if ((expressionId == 9)) {
                System.Activities.XamlIntegration.CompiledDataContext[] cachedCompiledDataContext = FincalActivity_TypedDataContext5_ForReadOnly.GetCompiledDataContextCacheHelper(this.dataContextActivities, activityContext, this.rootActivity, this.forImplementation, 9);
                if ((cachedCompiledDataContext[4] == null)) {
                    cachedCompiledDataContext[4] = new FincalActivity_TypedDataContext5_ForReadOnly(locations, activityContext, true);
                }
                FincalActivity_TypedDataContext5_ForReadOnly valDataContext9 = ((FincalActivity_TypedDataContext5_ForReadOnly)(cachedCompiledDataContext[4]));
                return valDataContext9.ValueType___Expr9Get();
            }
            if ((expressionId == 10)) {
                System.Activities.XamlIntegration.CompiledDataContext[] cachedCompiledDataContext = FincalActivity_TypedDataContext6_ForReadOnly.GetCompiledDataContextCacheHelper(this.dataContextActivities, activityContext, this.rootActivity, this.forImplementation, 9);
                if ((cachedCompiledDataContext[5] == null)) {
                    cachedCompiledDataContext[5] = new FincalActivity_TypedDataContext6_ForReadOnly(locations, activityContext, true);
                }
                FincalActivity_TypedDataContext6_ForReadOnly valDataContext10 = ((FincalActivity_TypedDataContext6_ForReadOnly)(cachedCompiledDataContext[5]));
                return valDataContext10.ValueType___Expr10Get();
            }
            if ((expressionId == 11)) {
                System.Activities.XamlIntegration.CompiledDataContext[] cachedCompiledDataContext = FincalActivity_TypedDataContext6.GetCompiledDataContextCacheHelper(this.dataContextActivities, activityContext, this.rootActivity, this.forImplementation, 9);
                if ((cachedCompiledDataContext[6] == null)) {
                    cachedCompiledDataContext[6] = new FincalActivity_TypedDataContext6(locations, activityContext, true);
                }
                FincalActivity_TypedDataContext6 refDataContext11 = ((FincalActivity_TypedDataContext6)(cachedCompiledDataContext[6]));
                return refDataContext11.GetLocation<int>(refDataContext11.ValueType___Expr11Get, refDataContext11.ValueType___Expr11Set, expressionId, this.rootActivity, activityContext);
            }
            if ((expressionId == 12)) {
                System.Activities.XamlIntegration.CompiledDataContext[] cachedCompiledDataContext = FincalActivity_TypedDataContext6_ForReadOnly.GetCompiledDataContextCacheHelper(this.dataContextActivities, activityContext, this.rootActivity, this.forImplementation, 9);
                if ((cachedCompiledDataContext[5] == null)) {
                    cachedCompiledDataContext[5] = new FincalActivity_TypedDataContext6_ForReadOnly(locations, activityContext, true);
                }
                FincalActivity_TypedDataContext6_ForReadOnly valDataContext12 = ((FincalActivity_TypedDataContext6_ForReadOnly)(cachedCompiledDataContext[5]));
                return valDataContext12.ValueType___Expr12Get();
            }
            if ((expressionId == 13)) {
                System.Activities.XamlIntegration.CompiledDataContext[] cachedCompiledDataContext = FincalActivity_TypedDataContext6_ForReadOnly.GetCompiledDataContextCacheHelper(this.dataContextActivities, activityContext, this.rootActivity, this.forImplementation, 9);
                if ((cachedCompiledDataContext[5] == null)) {
                    cachedCompiledDataContext[5] = new FincalActivity_TypedDataContext6_ForReadOnly(locations, activityContext, true);
                }
                FincalActivity_TypedDataContext6_ForReadOnly valDataContext13 = ((FincalActivity_TypedDataContext6_ForReadOnly)(cachedCompiledDataContext[5]));
                return valDataContext13.ValueType___Expr13Get();
            }
            if ((expressionId == 14)) {
                System.Activities.XamlIntegration.CompiledDataContext[] cachedCompiledDataContext = FincalActivity_TypedDataContext6_ForReadOnly.GetCompiledDataContextCacheHelper(this.dataContextActivities, activityContext, this.rootActivity, this.forImplementation, 9);
                if ((cachedCompiledDataContext[5] == null)) {
                    cachedCompiledDataContext[5] = new FincalActivity_TypedDataContext6_ForReadOnly(locations, activityContext, true);
                }
                FincalActivity_TypedDataContext6_ForReadOnly valDataContext14 = ((FincalActivity_TypedDataContext6_ForReadOnly)(cachedCompiledDataContext[5]));
                return valDataContext14.ValueType___Expr14Get();
            }
            if ((expressionId == 15)) {
                System.Activities.XamlIntegration.CompiledDataContext[] cachedCompiledDataContext = FincalActivity_TypedDataContext6.GetCompiledDataContextCacheHelper(this.dataContextActivities, activityContext, this.rootActivity, this.forImplementation, 9);
                if ((cachedCompiledDataContext[6] == null)) {
                    cachedCompiledDataContext[6] = new FincalActivity_TypedDataContext6(locations, activityContext, true);
                }
                FincalActivity_TypedDataContext6 refDataContext15 = ((FincalActivity_TypedDataContext6)(cachedCompiledDataContext[6]));
                return refDataContext15.GetLocation<string>(refDataContext15.ValueType___Expr15Get, refDataContext15.ValueType___Expr15Set, expressionId, this.rootActivity, activityContext);
            }
            if ((expressionId == 16)) {
                System.Activities.XamlIntegration.CompiledDataContext[] cachedCompiledDataContext = FincalActivity_TypedDataContext7_ForReadOnly.GetCompiledDataContextCacheHelper(this.dataContextActivities, activityContext, this.rootActivity, this.forImplementation, 9);
                if ((cachedCompiledDataContext[7] == null)) {
                    cachedCompiledDataContext[7] = new FincalActivity_TypedDataContext7_ForReadOnly(locations, activityContext, true);
                }
                FincalActivity_TypedDataContext7_ForReadOnly valDataContext16 = ((FincalActivity_TypedDataContext7_ForReadOnly)(cachedCompiledDataContext[7]));
                return valDataContext16.ValueType___Expr16Get();
            }
            if ((expressionId == 17)) {
                System.Activities.XamlIntegration.CompiledDataContext[] cachedCompiledDataContext = FincalActivity_TypedDataContext7.GetCompiledDataContextCacheHelper(this.dataContextActivities, activityContext, this.rootActivity, this.forImplementation, 9);
                if ((cachedCompiledDataContext[8] == null)) {
                    cachedCompiledDataContext[8] = new FincalActivity_TypedDataContext7(locations, activityContext, true);
                }
                FincalActivity_TypedDataContext7 refDataContext17 = ((FincalActivity_TypedDataContext7)(cachedCompiledDataContext[8]));
                return refDataContext17.GetLocation<int>(refDataContext17.ValueType___Expr17Get, refDataContext17.ValueType___Expr17Set, expressionId, this.rootActivity, activityContext);
            }
            if ((expressionId == 18)) {
                System.Activities.XamlIntegration.CompiledDataContext[] cachedCompiledDataContext = FincalActivity_TypedDataContext7_ForReadOnly.GetCompiledDataContextCacheHelper(this.dataContextActivities, activityContext, this.rootActivity, this.forImplementation, 9);
                if ((cachedCompiledDataContext[7] == null)) {
                    cachedCompiledDataContext[7] = new FincalActivity_TypedDataContext7_ForReadOnly(locations, activityContext, true);
                }
                FincalActivity_TypedDataContext7_ForReadOnly valDataContext18 = ((FincalActivity_TypedDataContext7_ForReadOnly)(cachedCompiledDataContext[7]));
                return valDataContext18.ValueType___Expr18Get();
            }
            return null;
        }
        
        [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Activities", "4.0.0.0")]
        [System.ComponentModel.BrowsableAttribute(false)]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        public object InvokeExpression(int expressionId, System.Collections.Generic.IList<System.Activities.Location> locations) {
            if ((this.rootActivity == null)) {
                this.rootActivity = this;
            }
            if ((expressionId == 0)) {
                FincalActivity_TypedDataContext3 refDataContext0 = new FincalActivity_TypedDataContext3(locations, true);
                return refDataContext0.GetLocation<string>(refDataContext0.ValueType___Expr0Get, refDataContext0.ValueType___Expr0Set);
            }
            if ((expressionId == 1)) {
                FincalActivity_TypedDataContext4_ForReadOnly valDataContext1 = new FincalActivity_TypedDataContext4_ForReadOnly(locations, true);
                return valDataContext1.ValueType___Expr1Get();
            }
            if ((expressionId == 2)) {
                FincalActivity_TypedDataContext4 refDataContext2 = new FincalActivity_TypedDataContext4(locations, true);
                return refDataContext2.GetLocation<int>(refDataContext2.ValueType___Expr2Get, refDataContext2.ValueType___Expr2Set);
            }
            if ((expressionId == 3)) {
                FincalActivity_TypedDataContext4_ForReadOnly valDataContext3 = new FincalActivity_TypedDataContext4_ForReadOnly(locations, true);
                return valDataContext3.ValueType___Expr3Get();
            }
            if ((expressionId == 4)) {
                FincalActivity_TypedDataContext4_ForReadOnly valDataContext4 = new FincalActivity_TypedDataContext4_ForReadOnly(locations, true);
                return valDataContext4.ValueType___Expr4Get();
            }
            if ((expressionId == 5)) {
                FincalActivity_TypedDataContext4 refDataContext5 = new FincalActivity_TypedDataContext4(locations, true);
                return refDataContext5.GetLocation<string>(refDataContext5.ValueType___Expr5Get, refDataContext5.ValueType___Expr5Set);
            }
            if ((expressionId == 6)) {
                FincalActivity_TypedDataContext4_ForReadOnly valDataContext6 = new FincalActivity_TypedDataContext4_ForReadOnly(locations, true);
                return valDataContext6.ValueType___Expr6Get();
            }
            if ((expressionId == 7)) {
                FincalActivity_TypedDataContext4 refDataContext7 = new FincalActivity_TypedDataContext4(locations, true);
                return refDataContext7.GetLocation<string>(refDataContext7.ValueType___Expr7Get, refDataContext7.ValueType___Expr7Set);
            }
            if ((expressionId == 8)) {
                FincalActivity_TypedDataContext5 refDataContext8 = new FincalActivity_TypedDataContext5(locations, true);
                return refDataContext8.GetLocation<string>(refDataContext8.ValueType___Expr8Get, refDataContext8.ValueType___Expr8Set);
            }
            if ((expressionId == 9)) {
                FincalActivity_TypedDataContext5_ForReadOnly valDataContext9 = new FincalActivity_TypedDataContext5_ForReadOnly(locations, true);
                return valDataContext9.ValueType___Expr9Get();
            }
            if ((expressionId == 10)) {
                FincalActivity_TypedDataContext6_ForReadOnly valDataContext10 = new FincalActivity_TypedDataContext6_ForReadOnly(locations, true);
                return valDataContext10.ValueType___Expr10Get();
            }
            if ((expressionId == 11)) {
                FincalActivity_TypedDataContext6 refDataContext11 = new FincalActivity_TypedDataContext6(locations, true);
                return refDataContext11.GetLocation<int>(refDataContext11.ValueType___Expr11Get, refDataContext11.ValueType___Expr11Set);
            }
            if ((expressionId == 12)) {
                FincalActivity_TypedDataContext6_ForReadOnly valDataContext12 = new FincalActivity_TypedDataContext6_ForReadOnly(locations, true);
                return valDataContext12.ValueType___Expr12Get();
            }
            if ((expressionId == 13)) {
                FincalActivity_TypedDataContext6_ForReadOnly valDataContext13 = new FincalActivity_TypedDataContext6_ForReadOnly(locations, true);
                return valDataContext13.ValueType___Expr13Get();
            }
            if ((expressionId == 14)) {
                FincalActivity_TypedDataContext6_ForReadOnly valDataContext14 = new FincalActivity_TypedDataContext6_ForReadOnly(locations, true);
                return valDataContext14.ValueType___Expr14Get();
            }
            if ((expressionId == 15)) {
                FincalActivity_TypedDataContext6 refDataContext15 = new FincalActivity_TypedDataContext6(locations, true);
                return refDataContext15.GetLocation<string>(refDataContext15.ValueType___Expr15Get, refDataContext15.ValueType___Expr15Set);
            }
            if ((expressionId == 16)) {
                FincalActivity_TypedDataContext7_ForReadOnly valDataContext16 = new FincalActivity_TypedDataContext7_ForReadOnly(locations, true);
                return valDataContext16.ValueType___Expr16Get();
            }
            if ((expressionId == 17)) {
                FincalActivity_TypedDataContext7 refDataContext17 = new FincalActivity_TypedDataContext7(locations, true);
                return refDataContext17.GetLocation<int>(refDataContext17.ValueType___Expr17Get, refDataContext17.ValueType___Expr17Set);
            }
            if ((expressionId == 18)) {
                FincalActivity_TypedDataContext7_ForReadOnly valDataContext18 = new FincalActivity_TypedDataContext7_ForReadOnly(locations, true);
                return valDataContext18.ValueType___Expr18Get();
            }
            return null;
        }
        
        [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Activities", "4.0.0.0")]
        [System.ComponentModel.BrowsableAttribute(false)]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        public bool CanExecuteExpression(string expressionText, bool isReference, System.Collections.Generic.IList<System.Activities.LocationReference> locations, out int expressionId) {
            if (((isReference == true) 
                        && ((expressionText == "TempBookMarkName") 
                        && (FincalActivity_TypedDataContext3.Validate(locations, true, 0) == true)))) {
                expressionId = 0;
                return true;
            }
            if (((isReference == false) 
                        && ((expressionText == "TempBookMarkName") 
                        && (FincalActivity_TypedDataContext4_ForReadOnly.Validate(locations, true, 0) == true)))) {
                expressionId = 1;
                return true;
            }
            if (((isReference == true) 
                        && ((expressionText == "Result") 
                        && (FincalActivity_TypedDataContext4.Validate(locations, true, 0) == true)))) {
                expressionId = 2;
                return true;
            }
            if (((isReference == false) 
                        && ((expressionText == "TempBookMarkName") 
                        && (FincalActivity_TypedDataContext4_ForReadOnly.Validate(locations, true, 0) == true)))) {
                expressionId = 3;
                return true;
            }
            if (((isReference == false) 
                        && ((expressionText == "Result==1") 
                        && (FincalActivity_TypedDataContext4_ForReadOnly.Validate(locations, true, 0) == true)))) {
                expressionId = 4;
                return true;
            }
            if (((isReference == true) 
                        && ((expressionText == "TempBookMarkName") 
                        && (FincalActivity_TypedDataContext4.Validate(locations, true, 0) == true)))) {
                expressionId = 5;
                return true;
            }
            if (((isReference == false) 
                        && ((expressionText == "Result==0") 
                        && (FincalActivity_TypedDataContext4_ForReadOnly.Validate(locations, true, 0) == true)))) {
                expressionId = 6;
                return true;
            }
            if (((isReference == true) 
                        && ((expressionText == "TempBookMarkName") 
                        && (FincalActivity_TypedDataContext4.Validate(locations, true, 0) == true)))) {
                expressionId = 7;
                return true;
            }
            if (((isReference == true) 
                        && ((expressionText == "TempBookMarkName") 
                        && (FincalActivity_TypedDataContext5.Validate(locations, true, 0) == true)))) {
                expressionId = 8;
                return true;
            }
            if (((isReference == false) 
                        && ((expressionText == "TempBookMarkName") 
                        && (FincalActivity_TypedDataContext5_ForReadOnly.Validate(locations, true, 0) == true)))) {
                expressionId = 9;
                return true;
            }
            if (((isReference == false) 
                        && ((expressionText == "TempBookMarkName") 
                        && (FincalActivity_TypedDataContext6_ForReadOnly.Validate(locations, true, 0) == true)))) {
                expressionId = 10;
                return true;
            }
            if (((isReference == true) 
                        && ((expressionText == "Result") 
                        && (FincalActivity_TypedDataContext6.Validate(locations, true, 0) == true)))) {
                expressionId = 11;
                return true;
            }
            if (((isReference == false) 
                        && ((expressionText == "TempBookMarkName") 
                        && (FincalActivity_TypedDataContext6_ForReadOnly.Validate(locations, true, 0) == true)))) {
                expressionId = 12;
                return true;
            }
            if (((isReference == false) 
                        && ((expressionText == "Result==1") 
                        && (FincalActivity_TypedDataContext6_ForReadOnly.Validate(locations, true, 0) == true)))) {
                expressionId = 13;
                return true;
            }
            if (((isReference == false) 
                        && ((expressionText == "Result ==0") 
                        && (FincalActivity_TypedDataContext6_ForReadOnly.Validate(locations, true, 0) == true)))) {
                expressionId = 14;
                return true;
            }
            if (((isReference == true) 
                        && ((expressionText == "TempBookMarkName") 
                        && (FincalActivity_TypedDataContext6.Validate(locations, true, 0) == true)))) {
                expressionId = 15;
                return true;
            }
            if (((isReference == false) 
                        && ((expressionText == "TempBookMarkName") 
                        && (FincalActivity_TypedDataContext7_ForReadOnly.Validate(locations, true, 0) == true)))) {
                expressionId = 16;
                return true;
            }
            if (((isReference == true) 
                        && ((expressionText == "Result") 
                        && (FincalActivity_TypedDataContext7.Validate(locations, true, 0) == true)))) {
                expressionId = 17;
                return true;
            }
            if (((isReference == false) 
                        && ((expressionText == "TempBookMarkName") 
                        && (FincalActivity_TypedDataContext7_ForReadOnly.Validate(locations, true, 0) == true)))) {
                expressionId = 18;
                return true;
            }
            expressionId = -1;
            return false;
        }
        
        [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Activities", "4.0.0.0")]
        [System.ComponentModel.BrowsableAttribute(false)]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        public System.Collections.Generic.IList<string> GetRequiredLocations(int expressionId) {
            return null;
        }
        
        [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Activities", "4.0.0.0")]
        [System.ComponentModel.BrowsableAttribute(false)]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        public System.Linq.Expressions.Expression GetExpressionTreeForExpression(int expressionId, System.Collections.Generic.IList<System.Activities.LocationReference> locationReferences) {
            if ((expressionId == 0)) {
                return new FincalActivity_TypedDataContext3(locationReferences).@__Expr0GetTree();
            }
            if ((expressionId == 1)) {
                return new FincalActivity_TypedDataContext4_ForReadOnly(locationReferences).@__Expr1GetTree();
            }
            if ((expressionId == 2)) {
                return new FincalActivity_TypedDataContext4(locationReferences).@__Expr2GetTree();
            }
            if ((expressionId == 3)) {
                return new FincalActivity_TypedDataContext4_ForReadOnly(locationReferences).@__Expr3GetTree();
            }
            if ((expressionId == 4)) {
                return new FincalActivity_TypedDataContext4_ForReadOnly(locationReferences).@__Expr4GetTree();
            }
            if ((expressionId == 5)) {
                return new FincalActivity_TypedDataContext4(locationReferences).@__Expr5GetTree();
            }
            if ((expressionId == 6)) {
                return new FincalActivity_TypedDataContext4_ForReadOnly(locationReferences).@__Expr6GetTree();
            }
            if ((expressionId == 7)) {
                return new FincalActivity_TypedDataContext4(locationReferences).@__Expr7GetTree();
            }
            if ((expressionId == 8)) {
                return new FincalActivity_TypedDataContext5(locationReferences).@__Expr8GetTree();
            }
            if ((expressionId == 9)) {
                return new FincalActivity_TypedDataContext5_ForReadOnly(locationReferences).@__Expr9GetTree();
            }
            if ((expressionId == 10)) {
                return new FincalActivity_TypedDataContext6_ForReadOnly(locationReferences).@__Expr10GetTree();
            }
            if ((expressionId == 11)) {
                return new FincalActivity_TypedDataContext6(locationReferences).@__Expr11GetTree();
            }
            if ((expressionId == 12)) {
                return new FincalActivity_TypedDataContext6_ForReadOnly(locationReferences).@__Expr12GetTree();
            }
            if ((expressionId == 13)) {
                return new FincalActivity_TypedDataContext6_ForReadOnly(locationReferences).@__Expr13GetTree();
            }
            if ((expressionId == 14)) {
                return new FincalActivity_TypedDataContext6_ForReadOnly(locationReferences).@__Expr14GetTree();
            }
            if ((expressionId == 15)) {
                return new FincalActivity_TypedDataContext6(locationReferences).@__Expr15GetTree();
            }
            if ((expressionId == 16)) {
                return new FincalActivity_TypedDataContext7_ForReadOnly(locationReferences).@__Expr16GetTree();
            }
            if ((expressionId == 17)) {
                return new FincalActivity_TypedDataContext7(locationReferences).@__Expr17GetTree();
            }
            if ((expressionId == 18)) {
                return new FincalActivity_TypedDataContext7_ForReadOnly(locationReferences).@__Expr18GetTree();
            }
            return null;
        }
        
        [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Activities", "4.0.0.0")]
        [System.ComponentModel.BrowsableAttribute(false)]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        private class FincalActivity_TypedDataContext0 : System.Activities.XamlIntegration.CompiledDataContext {
            
            private int locationsOffset;
            
            private static int expectedLocationsCount;
            
            public FincalActivity_TypedDataContext0(System.Collections.Generic.IList<System.Activities.LocationReference> locations, System.Activities.ActivityContext activityContext, bool computelocationsOffset) : 
                    base(locations, activityContext) {
                if ((computelocationsOffset == true)) {
                    this.SetLocationsOffset((locations.Count - expectedLocationsCount));
                }
            }
            
            public FincalActivity_TypedDataContext0(System.Collections.Generic.IList<System.Activities.Location> locations, bool computelocationsOffset) : 
                    base(locations) {
                if ((computelocationsOffset == true)) {
                    this.SetLocationsOffset((locations.Count - expectedLocationsCount));
                }
            }
            
            public FincalActivity_TypedDataContext0(System.Collections.Generic.IList<System.Activities.LocationReference> locationReferences) : 
                    base(locationReferences) {
            }
            
            internal static object GetDataContextActivitiesHelper(System.Activities.Activity compiledRoot, bool forImplementation) {
                return System.Activities.XamlIntegration.CompiledDataContext.GetDataContextActivities(compiledRoot, forImplementation);
            }
            
            internal static System.Activities.XamlIntegration.CompiledDataContext[] GetCompiledDataContextCacheHelper(object dataContextActivities, System.Activities.ActivityContext activityContext, System.Activities.Activity compiledRoot, bool forImplementation, int compiledDataContextCount) {
                return System.Activities.XamlIntegration.CompiledDataContext.GetCompiledDataContextCache(dataContextActivities, activityContext, compiledRoot, forImplementation, compiledDataContextCount);
            }
            
            public virtual void SetLocationsOffset(int locationsOffsetValue) {
                locationsOffset = locationsOffsetValue;
            }
            
            public static bool Validate(System.Collections.Generic.IList<System.Activities.LocationReference> locationReferences, bool validateLocationCount, int offset) {
                if (((validateLocationCount == true) 
                            && (locationReferences.Count < 0))) {
                    return false;
                }
                expectedLocationsCount = 0;
                return true;
            }
        }
        
        [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Activities", "4.0.0.0")]
        [System.ComponentModel.BrowsableAttribute(false)]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        private class FincalActivity_TypedDataContext0_ForReadOnly : System.Activities.XamlIntegration.CompiledDataContext {
            
            private int locationsOffset;
            
            private static int expectedLocationsCount;
            
            public FincalActivity_TypedDataContext0_ForReadOnly(System.Collections.Generic.IList<System.Activities.LocationReference> locations, System.Activities.ActivityContext activityContext, bool computelocationsOffset) : 
                    base(locations, activityContext) {
                if ((computelocationsOffset == true)) {
                    this.SetLocationsOffset((locations.Count - expectedLocationsCount));
                }
            }
            
            public FincalActivity_TypedDataContext0_ForReadOnly(System.Collections.Generic.IList<System.Activities.Location> locations, bool computelocationsOffset) : 
                    base(locations) {
                if ((computelocationsOffset == true)) {
                    this.SetLocationsOffset((locations.Count - expectedLocationsCount));
                }
            }
            
            public FincalActivity_TypedDataContext0_ForReadOnly(System.Collections.Generic.IList<System.Activities.LocationReference> locationReferences) : 
                    base(locationReferences) {
            }
            
            internal static object GetDataContextActivitiesHelper(System.Activities.Activity compiledRoot, bool forImplementation) {
                return System.Activities.XamlIntegration.CompiledDataContext.GetDataContextActivities(compiledRoot, forImplementation);
            }
            
            internal static System.Activities.XamlIntegration.CompiledDataContext[] GetCompiledDataContextCacheHelper(object dataContextActivities, System.Activities.ActivityContext activityContext, System.Activities.Activity compiledRoot, bool forImplementation, int compiledDataContextCount) {
                return System.Activities.XamlIntegration.CompiledDataContext.GetCompiledDataContextCache(dataContextActivities, activityContext, compiledRoot, forImplementation, compiledDataContextCount);
            }
            
            public virtual void SetLocationsOffset(int locationsOffsetValue) {
                locationsOffset = locationsOffsetValue;
            }
            
            public static bool Validate(System.Collections.Generic.IList<System.Activities.LocationReference> locationReferences, bool validateLocationCount, int offset) {
                if (((validateLocationCount == true) 
                            && (locationReferences.Count < 0))) {
                    return false;
                }
                expectedLocationsCount = 0;
                return true;
            }
        }
        
        [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Activities", "4.0.0.0")]
        [System.ComponentModel.BrowsableAttribute(false)]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        private class FincalActivity_TypedDataContext1 : FincalActivity_TypedDataContext0 {
            
            private int locationsOffset;
            
            private static int expectedLocationsCount;
            
            public FincalActivity_TypedDataContext1(System.Collections.Generic.IList<System.Activities.LocationReference> locations, System.Activities.ActivityContext activityContext, bool computelocationsOffset) : 
                    base(locations, activityContext, false) {
                if ((computelocationsOffset == true)) {
                    this.SetLocationsOffset((locations.Count - expectedLocationsCount));
                }
            }
            
            public FincalActivity_TypedDataContext1(System.Collections.Generic.IList<System.Activities.Location> locations, bool computelocationsOffset) : 
                    base(locations, false) {
                if ((computelocationsOffset == true)) {
                    this.SetLocationsOffset((locations.Count - expectedLocationsCount));
                }
            }
            
            public FincalActivity_TypedDataContext1(System.Collections.Generic.IList<System.Activities.LocationReference> locationReferences) : 
                    base(locationReferences) {
            }
            
            internal new static System.Activities.XamlIntegration.CompiledDataContext[] GetCompiledDataContextCacheHelper(object dataContextActivities, System.Activities.ActivityContext activityContext, System.Activities.Activity compiledRoot, bool forImplementation, int compiledDataContextCount) {
                return System.Activities.XamlIntegration.CompiledDataContext.GetCompiledDataContextCache(dataContextActivities, activityContext, compiledRoot, forImplementation, compiledDataContextCount);
            }
            
            public new virtual void SetLocationsOffset(int locationsOffsetValue) {
                locationsOffset = locationsOffsetValue;
                base.SetLocationsOffset(locationsOffset);
            }
            
            public new static bool Validate(System.Collections.Generic.IList<System.Activities.LocationReference> locationReferences, bool validateLocationCount, int offset) {
                if (((validateLocationCount == true) 
                            && (locationReferences.Count < 0))) {
                    return false;
                }
                expectedLocationsCount = 0;
                return FincalActivity_TypedDataContext0.Validate(locationReferences, false, offset);
            }
        }
        
        [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Activities", "4.0.0.0")]
        [System.ComponentModel.BrowsableAttribute(false)]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        private class FincalActivity_TypedDataContext1_ForReadOnly : FincalActivity_TypedDataContext0_ForReadOnly {
            
            private int locationsOffset;
            
            private static int expectedLocationsCount;
            
            public FincalActivity_TypedDataContext1_ForReadOnly(System.Collections.Generic.IList<System.Activities.LocationReference> locations, System.Activities.ActivityContext activityContext, bool computelocationsOffset) : 
                    base(locations, activityContext, false) {
                if ((computelocationsOffset == true)) {
                    this.SetLocationsOffset((locations.Count - expectedLocationsCount));
                }
            }
            
            public FincalActivity_TypedDataContext1_ForReadOnly(System.Collections.Generic.IList<System.Activities.Location> locations, bool computelocationsOffset) : 
                    base(locations, false) {
                if ((computelocationsOffset == true)) {
                    this.SetLocationsOffset((locations.Count - expectedLocationsCount));
                }
            }
            
            public FincalActivity_TypedDataContext1_ForReadOnly(System.Collections.Generic.IList<System.Activities.LocationReference> locationReferences) : 
                    base(locationReferences) {
            }
            
            internal new static System.Activities.XamlIntegration.CompiledDataContext[] GetCompiledDataContextCacheHelper(object dataContextActivities, System.Activities.ActivityContext activityContext, System.Activities.Activity compiledRoot, bool forImplementation, int compiledDataContextCount) {
                return System.Activities.XamlIntegration.CompiledDataContext.GetCompiledDataContextCache(dataContextActivities, activityContext, compiledRoot, forImplementation, compiledDataContextCount);
            }
            
            public new virtual void SetLocationsOffset(int locationsOffsetValue) {
                locationsOffset = locationsOffsetValue;
                base.SetLocationsOffset(locationsOffset);
            }
            
            public new static bool Validate(System.Collections.Generic.IList<System.Activities.LocationReference> locationReferences, bool validateLocationCount, int offset) {
                if (((validateLocationCount == true) 
                            && (locationReferences.Count < 0))) {
                    return false;
                }
                expectedLocationsCount = 0;
                return FincalActivity_TypedDataContext0_ForReadOnly.Validate(locationReferences, false, offset);
            }
        }
        
        [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Activities", "4.0.0.0")]
        [System.ComponentModel.BrowsableAttribute(false)]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        private class FincalActivity_TypedDataContext2 : FincalActivity_TypedDataContext1 {
            
            private int locationsOffset;
            
            private static int expectedLocationsCount;
            
            protected int Result;
            
            public FincalActivity_TypedDataContext2(System.Collections.Generic.IList<System.Activities.LocationReference> locations, System.Activities.ActivityContext activityContext, bool computelocationsOffset) : 
                    base(locations, activityContext, false) {
                if ((computelocationsOffset == true)) {
                    this.SetLocationsOffset((locations.Count - expectedLocationsCount));
                }
            }
            
            public FincalActivity_TypedDataContext2(System.Collections.Generic.IList<System.Activities.Location> locations, bool computelocationsOffset) : 
                    base(locations, false) {
                if ((computelocationsOffset == true)) {
                    this.SetLocationsOffset((locations.Count - expectedLocationsCount));
                }
            }
            
            public FincalActivity_TypedDataContext2(System.Collections.Generic.IList<System.Activities.LocationReference> locationReferences) : 
                    base(locationReferences) {
            }
            
            protected string TempBookMarkName {
                get {
                    return ((string)(this.GetVariableValue((0 + locationsOffset))));
                }
                set {
                    this.SetVariableValue((0 + locationsOffset), value);
                }
            }
            
            internal new static System.Activities.XamlIntegration.CompiledDataContext[] GetCompiledDataContextCacheHelper(object dataContextActivities, System.Activities.ActivityContext activityContext, System.Activities.Activity compiledRoot, bool forImplementation, int compiledDataContextCount) {
                return System.Activities.XamlIntegration.CompiledDataContext.GetCompiledDataContextCache(dataContextActivities, activityContext, compiledRoot, forImplementation, compiledDataContextCount);
            }
            
            public new virtual void SetLocationsOffset(int locationsOffsetValue) {
                locationsOffset = locationsOffsetValue;
                base.SetLocationsOffset(locationsOffset);
            }
            
            protected override void GetValueTypeValues() {
                this.Result = ((int)(this.GetVariableValue((1 + locationsOffset))));
                base.GetValueTypeValues();
            }
            
            protected override void SetValueTypeValues() {
                this.SetVariableValue((1 + locationsOffset), this.Result);
                base.SetValueTypeValues();
            }
            
            public new static bool Validate(System.Collections.Generic.IList<System.Activities.LocationReference> locationReferences, bool validateLocationCount, int offset) {
                if (((validateLocationCount == true) 
                            && (locationReferences.Count < 2))) {
                    return false;
                }
                if ((validateLocationCount == true)) {
                    offset = (locationReferences.Count - 2);
                }
                expectedLocationsCount = 2;
                if (((locationReferences[(offset + 0)].Name != "TempBookMarkName") 
                            || (locationReferences[(offset + 0)].Type != typeof(string)))) {
                    return false;
                }
                if (((locationReferences[(offset + 1)].Name != "Result") 
                            || (locationReferences[(offset + 1)].Type != typeof(int)))) {
                    return false;
                }
                return FincalActivity_TypedDataContext1.Validate(locationReferences, false, offset);
            }
        }
        
        [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Activities", "4.0.0.0")]
        [System.ComponentModel.BrowsableAttribute(false)]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        private class FincalActivity_TypedDataContext2_ForReadOnly : FincalActivity_TypedDataContext1_ForReadOnly {
            
            private int locationsOffset;
            
            private static int expectedLocationsCount;
            
            protected int Result;
            
            public FincalActivity_TypedDataContext2_ForReadOnly(System.Collections.Generic.IList<System.Activities.LocationReference> locations, System.Activities.ActivityContext activityContext, bool computelocationsOffset) : 
                    base(locations, activityContext, false) {
                if ((computelocationsOffset == true)) {
                    this.SetLocationsOffset((locations.Count - expectedLocationsCount));
                }
            }
            
            public FincalActivity_TypedDataContext2_ForReadOnly(System.Collections.Generic.IList<System.Activities.Location> locations, bool computelocationsOffset) : 
                    base(locations, false) {
                if ((computelocationsOffset == true)) {
                    this.SetLocationsOffset((locations.Count - expectedLocationsCount));
                }
            }
            
            public FincalActivity_TypedDataContext2_ForReadOnly(System.Collections.Generic.IList<System.Activities.LocationReference> locationReferences) : 
                    base(locationReferences) {
            }
            
            protected string TempBookMarkName {
                get {
                    return ((string)(this.GetVariableValue((0 + locationsOffset))));
                }
            }
            
            internal new static System.Activities.XamlIntegration.CompiledDataContext[] GetCompiledDataContextCacheHelper(object dataContextActivities, System.Activities.ActivityContext activityContext, System.Activities.Activity compiledRoot, bool forImplementation, int compiledDataContextCount) {
                return System.Activities.XamlIntegration.CompiledDataContext.GetCompiledDataContextCache(dataContextActivities, activityContext, compiledRoot, forImplementation, compiledDataContextCount);
            }
            
            public new virtual void SetLocationsOffset(int locationsOffsetValue) {
                locationsOffset = locationsOffsetValue;
                base.SetLocationsOffset(locationsOffset);
            }
            
            protected override void GetValueTypeValues() {
                this.Result = ((int)(this.GetVariableValue((1 + locationsOffset))));
                base.GetValueTypeValues();
            }
            
            public new static bool Validate(System.Collections.Generic.IList<System.Activities.LocationReference> locationReferences, bool validateLocationCount, int offset) {
                if (((validateLocationCount == true) 
                            && (locationReferences.Count < 2))) {
                    return false;
                }
                if ((validateLocationCount == true)) {
                    offset = (locationReferences.Count - 2);
                }
                expectedLocationsCount = 2;
                if (((locationReferences[(offset + 0)].Name != "TempBookMarkName") 
                            || (locationReferences[(offset + 0)].Type != typeof(string)))) {
                    return false;
                }
                if (((locationReferences[(offset + 1)].Name != "Result") 
                            || (locationReferences[(offset + 1)].Type != typeof(int)))) {
                    return false;
                }
                return FincalActivity_TypedDataContext1_ForReadOnly.Validate(locationReferences, false, offset);
            }
        }
        
        [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Activities", "4.0.0.0")]
        [System.ComponentModel.BrowsableAttribute(false)]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        private class FincalActivity_TypedDataContext3 : FincalActivity_TypedDataContext2 {
            
            private int locationsOffset;
            
            private static int expectedLocationsCount;
            
            public FincalActivity_TypedDataContext3(System.Collections.Generic.IList<System.Activities.LocationReference> locations, System.Activities.ActivityContext activityContext, bool computelocationsOffset) : 
                    base(locations, activityContext, false) {
                if ((computelocationsOffset == true)) {
                    this.SetLocationsOffset((locations.Count - expectedLocationsCount));
                }
            }
            
            public FincalActivity_TypedDataContext3(System.Collections.Generic.IList<System.Activities.Location> locations, bool computelocationsOffset) : 
                    base(locations, false) {
                if ((computelocationsOffset == true)) {
                    this.SetLocationsOffset((locations.Count - expectedLocationsCount));
                }
            }
            
            public FincalActivity_TypedDataContext3(System.Collections.Generic.IList<System.Activities.LocationReference> locationReferences) : 
                    base(locationReferences) {
            }
            
            internal new static System.Activities.XamlIntegration.CompiledDataContext[] GetCompiledDataContextCacheHelper(object dataContextActivities, System.Activities.ActivityContext activityContext, System.Activities.Activity compiledRoot, bool forImplementation, int compiledDataContextCount) {
                return System.Activities.XamlIntegration.CompiledDataContext.GetCompiledDataContextCache(dataContextActivities, activityContext, compiledRoot, forImplementation, compiledDataContextCount);
            }
            
            public new virtual void SetLocationsOffset(int locationsOffsetValue) {
                locationsOffset = locationsOffsetValue;
                base.SetLocationsOffset(locationsOffset);
            }
            
            internal System.Linq.Expressions.Expression @__Expr0GetTree() {
                
                #line 230 "D:\LEARN\C# NET\ASP.NET\MVC\资料\CODE\HEIMA8.OA\HEIMA8.OA.WORKFLOW\FINCALACTIVITY.XAML"
                System.Linq.Expressions.Expression<System.Func<string>> expression = () => 
                    TempBookMarkName;
                
                #line default
                #line hidden
                return base.RewriteExpressionTree(expression);
            }
            
            [System.Diagnostics.DebuggerHiddenAttribute()]
            public string @__Expr0Get() {
                
                #line 230 "D:\LEARN\C# NET\ASP.NET\MVC\资料\CODE\HEIMA8.OA\HEIMA8.OA.WORKFLOW\FINCALACTIVITY.XAML"
                return 
                    TempBookMarkName;
                
                #line default
                #line hidden
            }
            
            public string ValueType___Expr0Get() {
                this.GetValueTypeValues();
                return this.@__Expr0Get();
            }
            
            [System.Diagnostics.DebuggerHiddenAttribute()]
            public void @__Expr0Set(string value) {
                
                #line 230 "D:\LEARN\C# NET\ASP.NET\MVC\资料\CODE\HEIMA8.OA\HEIMA8.OA.WORKFLOW\FINCALACTIVITY.XAML"
                
                    TempBookMarkName = value;
                
                #line default
                #line hidden
            }
            
            public void ValueType___Expr0Set(string value) {
                this.GetValueTypeValues();
                this.@__Expr0Set(value);
                this.SetValueTypeValues();
            }
            
            public new static bool Validate(System.Collections.Generic.IList<System.Activities.LocationReference> locationReferences, bool validateLocationCount, int offset) {
                if (((validateLocationCount == true) 
                            && (locationReferences.Count < 2))) {
                    return false;
                }
                if ((validateLocationCount == true)) {
                    offset = (locationReferences.Count - 2);
                }
                expectedLocationsCount = 2;
                return FincalActivity_TypedDataContext2.Validate(locationReferences, false, offset);
            }
        }
        
        [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Activities", "4.0.0.0")]
        [System.ComponentModel.BrowsableAttribute(false)]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        private class FincalActivity_TypedDataContext3_ForReadOnly : FincalActivity_TypedDataContext2_ForReadOnly {
            
            private int locationsOffset;
            
            private static int expectedLocationsCount;
            
            public FincalActivity_TypedDataContext3_ForReadOnly(System.Collections.Generic.IList<System.Activities.LocationReference> locations, System.Activities.ActivityContext activityContext, bool computelocationsOffset) : 
                    base(locations, activityContext, false) {
                if ((computelocationsOffset == true)) {
                    this.SetLocationsOffset((locations.Count - expectedLocationsCount));
                }
            }
            
            public FincalActivity_TypedDataContext3_ForReadOnly(System.Collections.Generic.IList<System.Activities.Location> locations, bool computelocationsOffset) : 
                    base(locations, false) {
                if ((computelocationsOffset == true)) {
                    this.SetLocationsOffset((locations.Count - expectedLocationsCount));
                }
            }
            
            public FincalActivity_TypedDataContext3_ForReadOnly(System.Collections.Generic.IList<System.Activities.LocationReference> locationReferences) : 
                    base(locationReferences) {
            }
            
            internal new static System.Activities.XamlIntegration.CompiledDataContext[] GetCompiledDataContextCacheHelper(object dataContextActivities, System.Activities.ActivityContext activityContext, System.Activities.Activity compiledRoot, bool forImplementation, int compiledDataContextCount) {
                return System.Activities.XamlIntegration.CompiledDataContext.GetCompiledDataContextCache(dataContextActivities, activityContext, compiledRoot, forImplementation, compiledDataContextCount);
            }
            
            public new virtual void SetLocationsOffset(int locationsOffsetValue) {
                locationsOffset = locationsOffsetValue;
                base.SetLocationsOffset(locationsOffset);
            }
            
            public new static bool Validate(System.Collections.Generic.IList<System.Activities.LocationReference> locationReferences, bool validateLocationCount, int offset) {
                if (((validateLocationCount == true) 
                            && (locationReferences.Count < 2))) {
                    return false;
                }
                if ((validateLocationCount == true)) {
                    offset = (locationReferences.Count - 2);
                }
                expectedLocationsCount = 2;
                return FincalActivity_TypedDataContext2_ForReadOnly.Validate(locationReferences, false, offset);
            }
        }
        
        [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Activities", "4.0.0.0")]
        [System.ComponentModel.BrowsableAttribute(false)]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        private class FincalActivity_TypedDataContext4 : FincalActivity_TypedDataContext2 {
            
            private int locationsOffset;
            
            private static int expectedLocationsCount;
            
            public FincalActivity_TypedDataContext4(System.Collections.Generic.IList<System.Activities.LocationReference> locations, System.Activities.ActivityContext activityContext, bool computelocationsOffset) : 
                    base(locations, activityContext, false) {
                if ((computelocationsOffset == true)) {
                    this.SetLocationsOffset((locations.Count - expectedLocationsCount));
                }
            }
            
            public FincalActivity_TypedDataContext4(System.Collections.Generic.IList<System.Activities.Location> locations, bool computelocationsOffset) : 
                    base(locations, false) {
                if ((computelocationsOffset == true)) {
                    this.SetLocationsOffset((locations.Count - expectedLocationsCount));
                }
            }
            
            public FincalActivity_TypedDataContext4(System.Collections.Generic.IList<System.Activities.LocationReference> locationReferences) : 
                    base(locationReferences) {
            }
            
            internal new static System.Activities.XamlIntegration.CompiledDataContext[] GetCompiledDataContextCacheHelper(object dataContextActivities, System.Activities.ActivityContext activityContext, System.Activities.Activity compiledRoot, bool forImplementation, int compiledDataContextCount) {
                return System.Activities.XamlIntegration.CompiledDataContext.GetCompiledDataContextCache(dataContextActivities, activityContext, compiledRoot, forImplementation, compiledDataContextCount);
            }
            
            public new virtual void SetLocationsOffset(int locationsOffsetValue) {
                locationsOffset = locationsOffsetValue;
                base.SetLocationsOffset(locationsOffset);
            }
            
            internal System.Linq.Expressions.Expression @__Expr2GetTree() {
                
                #line 74 "D:\LEARN\C# NET\ASP.NET\MVC\资料\CODE\HEIMA8.OA\HEIMA8.OA.WORKFLOW\FINCALACTIVITY.XAML"
                System.Linq.Expressions.Expression<System.Func<int>> expression = () => 
                          Result;
                
                #line default
                #line hidden
                return base.RewriteExpressionTree(expression);
            }
            
            [System.Diagnostics.DebuggerHiddenAttribute()]
            public int @__Expr2Get() {
                
                #line 74 "D:\LEARN\C# NET\ASP.NET\MVC\资料\CODE\HEIMA8.OA\HEIMA8.OA.WORKFLOW\FINCALACTIVITY.XAML"
                return 
                          Result;
                
                #line default
                #line hidden
            }
            
            public int ValueType___Expr2Get() {
                this.GetValueTypeValues();
                return this.@__Expr2Get();
            }
            
            [System.Diagnostics.DebuggerHiddenAttribute()]
            public void @__Expr2Set(int value) {
                
                #line 74 "D:\LEARN\C# NET\ASP.NET\MVC\资料\CODE\HEIMA8.OA\HEIMA8.OA.WORKFLOW\FINCALACTIVITY.XAML"
                
                          Result = value;
                
                #line default
                #line hidden
            }
            
            public void ValueType___Expr2Set(int value) {
                this.GetValueTypeValues();
                this.@__Expr2Set(value);
                this.SetValueTypeValues();
            }
            
            internal System.Linq.Expressions.Expression @__Expr5GetTree() {
                
                #line 194 "D:\LEARN\C# NET\ASP.NET\MVC\资料\CODE\HEIMA8.OA\HEIMA8.OA.WORKFLOW\FINCALACTIVITY.XAML"
                System.Linq.Expressions.Expression<System.Func<string>> expression = () => 
                            TempBookMarkName;
                
                #line default
                #line hidden
                return base.RewriteExpressionTree(expression);
            }
            
            [System.Diagnostics.DebuggerHiddenAttribute()]
            public string @__Expr5Get() {
                
                #line 194 "D:\LEARN\C# NET\ASP.NET\MVC\资料\CODE\HEIMA8.OA\HEIMA8.OA.WORKFLOW\FINCALACTIVITY.XAML"
                return 
                            TempBookMarkName;
                
                #line default
                #line hidden
            }
            
            public string ValueType___Expr5Get() {
                this.GetValueTypeValues();
                return this.@__Expr5Get();
            }
            
            [System.Diagnostics.DebuggerHiddenAttribute()]
            public void @__Expr5Set(string value) {
                
                #line 194 "D:\LEARN\C# NET\ASP.NET\MVC\资料\CODE\HEIMA8.OA\HEIMA8.OA.WORKFLOW\FINCALACTIVITY.XAML"
                
                            TempBookMarkName = value;
                
                #line default
                #line hidden
            }
            
            public void ValueType___Expr5Set(string value) {
                this.GetValueTypeValues();
                this.@__Expr5Set(value);
                this.SetValueTypeValues();
            }
            
            internal System.Linq.Expressions.Expression @__Expr7GetTree() {
                
                #line 211 "D:\LEARN\C# NET\ASP.NET\MVC\资料\CODE\HEIMA8.OA\HEIMA8.OA.WORKFLOW\FINCALACTIVITY.XAML"
                System.Linq.Expressions.Expression<System.Func<string>> expression = () => 
                            TempBookMarkName;
                
                #line default
                #line hidden
                return base.RewriteExpressionTree(expression);
            }
            
            [System.Diagnostics.DebuggerHiddenAttribute()]
            public string @__Expr7Get() {
                
                #line 211 "D:\LEARN\C# NET\ASP.NET\MVC\资料\CODE\HEIMA8.OA\HEIMA8.OA.WORKFLOW\FINCALACTIVITY.XAML"
                return 
                            TempBookMarkName;
                
                #line default
                #line hidden
            }
            
            public string ValueType___Expr7Get() {
                this.GetValueTypeValues();
                return this.@__Expr7Get();
            }
            
            [System.Diagnostics.DebuggerHiddenAttribute()]
            public void @__Expr7Set(string value) {
                
                #line 211 "D:\LEARN\C# NET\ASP.NET\MVC\资料\CODE\HEIMA8.OA\HEIMA8.OA.WORKFLOW\FINCALACTIVITY.XAML"
                
                            TempBookMarkName = value;
                
                #line default
                #line hidden
            }
            
            public void ValueType___Expr7Set(string value) {
                this.GetValueTypeValues();
                this.@__Expr7Set(value);
                this.SetValueTypeValues();
            }
            
            public new static bool Validate(System.Collections.Generic.IList<System.Activities.LocationReference> locationReferences, bool validateLocationCount, int offset) {
                if (((validateLocationCount == true) 
                            && (locationReferences.Count < 2))) {
                    return false;
                }
                if ((validateLocationCount == true)) {
                    offset = (locationReferences.Count - 2);
                }
                expectedLocationsCount = 2;
                return FincalActivity_TypedDataContext2.Validate(locationReferences, false, offset);
            }
        }
        
        [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Activities", "4.0.0.0")]
        [System.ComponentModel.BrowsableAttribute(false)]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        private class FincalActivity_TypedDataContext4_ForReadOnly : FincalActivity_TypedDataContext2_ForReadOnly {
            
            private int locationsOffset;
            
            private static int expectedLocationsCount;
            
            public FincalActivity_TypedDataContext4_ForReadOnly(System.Collections.Generic.IList<System.Activities.LocationReference> locations, System.Activities.ActivityContext activityContext, bool computelocationsOffset) : 
                    base(locations, activityContext, false) {
                if ((computelocationsOffset == true)) {
                    this.SetLocationsOffset((locations.Count - expectedLocationsCount));
                }
            }
            
            public FincalActivity_TypedDataContext4_ForReadOnly(System.Collections.Generic.IList<System.Activities.Location> locations, bool computelocationsOffset) : 
                    base(locations, false) {
                if ((computelocationsOffset == true)) {
                    this.SetLocationsOffset((locations.Count - expectedLocationsCount));
                }
            }
            
            public FincalActivity_TypedDataContext4_ForReadOnly(System.Collections.Generic.IList<System.Activities.LocationReference> locationReferences) : 
                    base(locationReferences) {
            }
            
            internal new static System.Activities.XamlIntegration.CompiledDataContext[] GetCompiledDataContextCacheHelper(object dataContextActivities, System.Activities.ActivityContext activityContext, System.Activities.Activity compiledRoot, bool forImplementation, int compiledDataContextCount) {
                return System.Activities.XamlIntegration.CompiledDataContext.GetCompiledDataContextCache(dataContextActivities, activityContext, compiledRoot, forImplementation, compiledDataContextCount);
            }
            
            public new virtual void SetLocationsOffset(int locationsOffsetValue) {
                locationsOffset = locationsOffsetValue;
                base.SetLocationsOffset(locationsOffset);
            }
            
            internal System.Linq.Expressions.Expression @__Expr1GetTree() {
                
                #line 62 "D:\LEARN\C# NET\ASP.NET\MVC\资料\CODE\HEIMA8.OA\HEIMA8.OA.WORKFLOW\FINCALACTIVITY.XAML"
                System.Linq.Expressions.Expression<System.Func<string>> expression = () => 
                          TempBookMarkName;
                
                #line default
                #line hidden
                return base.RewriteExpressionTree(expression);
            }
            
            [System.Diagnostics.DebuggerHiddenAttribute()]
            public string @__Expr1Get() {
                
                #line 62 "D:\LEARN\C# NET\ASP.NET\MVC\资料\CODE\HEIMA8.OA\HEIMA8.OA.WORKFLOW\FINCALACTIVITY.XAML"
                return 
                          TempBookMarkName;
                
                #line default
                #line hidden
            }
            
            public string ValueType___Expr1Get() {
                this.GetValueTypeValues();
                return this.@__Expr1Get();
            }
            
            internal System.Linq.Expressions.Expression @__Expr3GetTree() {
                
                #line 69 "D:\LEARN\C# NET\ASP.NET\MVC\资料\CODE\HEIMA8.OA\HEIMA8.OA.WORKFLOW\FINCALACTIVITY.XAML"
                System.Linq.Expressions.Expression<System.Func<string>> expression = () => 
                          TempBookMarkName;
                
                #line default
                #line hidden
                return base.RewriteExpressionTree(expression);
            }
            
            [System.Diagnostics.DebuggerHiddenAttribute()]
            public string @__Expr3Get() {
                
                #line 69 "D:\LEARN\C# NET\ASP.NET\MVC\资料\CODE\HEIMA8.OA\HEIMA8.OA.WORKFLOW\FINCALACTIVITY.XAML"
                return 
                          TempBookMarkName;
                
                #line default
                #line hidden
            }
            
            public string ValueType___Expr3Get() {
                this.GetValueTypeValues();
                return this.@__Expr3Get();
            }
            
            internal System.Linq.Expressions.Expression @__Expr4GetTree() {
                
                #line 203 "D:\LEARN\C# NET\ASP.NET\MVC\资料\CODE\HEIMA8.OA\HEIMA8.OA.WORKFLOW\FINCALACTIVITY.XAML"
                System.Linq.Expressions.Expression<System.Func<bool>> expression = () => 
                      Result==1;
                
                #line default
                #line hidden
                return base.RewriteExpressionTree(expression);
            }
            
            [System.Diagnostics.DebuggerHiddenAttribute()]
            public bool @__Expr4Get() {
                
                #line 203 "D:\LEARN\C# NET\ASP.NET\MVC\资料\CODE\HEIMA8.OA\HEIMA8.OA.WORKFLOW\FINCALACTIVITY.XAML"
                return 
                      Result==1;
                
                #line default
                #line hidden
            }
            
            public bool ValueType___Expr4Get() {
                this.GetValueTypeValues();
                return this.@__Expr4Get();
            }
            
            internal System.Linq.Expressions.Expression @__Expr6GetTree() {
                
                #line 220 "D:\LEARN\C# NET\ASP.NET\MVC\资料\CODE\HEIMA8.OA\HEIMA8.OA.WORKFLOW\FINCALACTIVITY.XAML"
                System.Linq.Expressions.Expression<System.Func<bool>> expression = () => 
                      Result==0;
                
                #line default
                #line hidden
                return base.RewriteExpressionTree(expression);
            }
            
            [System.Diagnostics.DebuggerHiddenAttribute()]
            public bool @__Expr6Get() {
                
                #line 220 "D:\LEARN\C# NET\ASP.NET\MVC\资料\CODE\HEIMA8.OA\HEIMA8.OA.WORKFLOW\FINCALACTIVITY.XAML"
                return 
                      Result==0;
                
                #line default
                #line hidden
            }
            
            public bool ValueType___Expr6Get() {
                this.GetValueTypeValues();
                return this.@__Expr6Get();
            }
            
            public new static bool Validate(System.Collections.Generic.IList<System.Activities.LocationReference> locationReferences, bool validateLocationCount, int offset) {
                if (((validateLocationCount == true) 
                            && (locationReferences.Count < 2))) {
                    return false;
                }
                if ((validateLocationCount == true)) {
                    offset = (locationReferences.Count - 2);
                }
                expectedLocationsCount = 2;
                return FincalActivity_TypedDataContext2_ForReadOnly.Validate(locationReferences, false, offset);
            }
        }
        
        [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Activities", "4.0.0.0")]
        [System.ComponentModel.BrowsableAttribute(false)]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        private class FincalActivity_TypedDataContext5 : FincalActivity_TypedDataContext2 {
            
            private int locationsOffset;
            
            private static int expectedLocationsCount;
            
            public FincalActivity_TypedDataContext5(System.Collections.Generic.IList<System.Activities.LocationReference> locations, System.Activities.ActivityContext activityContext, bool computelocationsOffset) : 
                    base(locations, activityContext, false) {
                if ((computelocationsOffset == true)) {
                    this.SetLocationsOffset((locations.Count - expectedLocationsCount));
                }
            }
            
            public FincalActivity_TypedDataContext5(System.Collections.Generic.IList<System.Activities.Location> locations, bool computelocationsOffset) : 
                    base(locations, false) {
                if ((computelocationsOffset == true)) {
                    this.SetLocationsOffset((locations.Count - expectedLocationsCount));
                }
            }
            
            public FincalActivity_TypedDataContext5(System.Collections.Generic.IList<System.Activities.LocationReference> locationReferences) : 
                    base(locationReferences) {
            }
            
            internal new static System.Activities.XamlIntegration.CompiledDataContext[] GetCompiledDataContextCacheHelper(object dataContextActivities, System.Activities.ActivityContext activityContext, System.Activities.Activity compiledRoot, bool forImplementation, int compiledDataContextCount) {
                return System.Activities.XamlIntegration.CompiledDataContext.GetCompiledDataContextCache(dataContextActivities, activityContext, compiledRoot, forImplementation, compiledDataContextCount);
            }
            
            public new virtual void SetLocationsOffset(int locationsOffsetValue) {
                locationsOffset = locationsOffsetValue;
                base.SetLocationsOffset(locationsOffset);
            }
            
            internal System.Linq.Expressions.Expression @__Expr8GetTree() {
                
                #line 119 "D:\LEARN\C# NET\ASP.NET\MVC\资料\CODE\HEIMA8.OA\HEIMA8.OA.WORKFLOW\FINCALACTIVITY.XAML"
                System.Linq.Expressions.Expression<System.Func<string>> expression = () => 
                                          TempBookMarkName;
                
                #line default
                #line hidden
                return base.RewriteExpressionTree(expression);
            }
            
            [System.Diagnostics.DebuggerHiddenAttribute()]
            public string @__Expr8Get() {
                
                #line 119 "D:\LEARN\C# NET\ASP.NET\MVC\资料\CODE\HEIMA8.OA\HEIMA8.OA.WORKFLOW\FINCALACTIVITY.XAML"
                return 
                                          TempBookMarkName;
                
                #line default
                #line hidden
            }
            
            public string ValueType___Expr8Get() {
                this.GetValueTypeValues();
                return this.@__Expr8Get();
            }
            
            [System.Diagnostics.DebuggerHiddenAttribute()]
            public void @__Expr8Set(string value) {
                
                #line 119 "D:\LEARN\C# NET\ASP.NET\MVC\资料\CODE\HEIMA8.OA\HEIMA8.OA.WORKFLOW\FINCALACTIVITY.XAML"
                
                                          TempBookMarkName = value;
                
                #line default
                #line hidden
            }
            
            public void ValueType___Expr8Set(string value) {
                this.GetValueTypeValues();
                this.@__Expr8Set(value);
                this.SetValueTypeValues();
            }
            
            public new static bool Validate(System.Collections.Generic.IList<System.Activities.LocationReference> locationReferences, bool validateLocationCount, int offset) {
                if (((validateLocationCount == true) 
                            && (locationReferences.Count < 2))) {
                    return false;
                }
                if ((validateLocationCount == true)) {
                    offset = (locationReferences.Count - 2);
                }
                expectedLocationsCount = 2;
                return FincalActivity_TypedDataContext2.Validate(locationReferences, false, offset);
            }
        }
        
        [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Activities", "4.0.0.0")]
        [System.ComponentModel.BrowsableAttribute(false)]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        private class FincalActivity_TypedDataContext5_ForReadOnly : FincalActivity_TypedDataContext2_ForReadOnly {
            
            private int locationsOffset;
            
            private static int expectedLocationsCount;
            
            public FincalActivity_TypedDataContext5_ForReadOnly(System.Collections.Generic.IList<System.Activities.LocationReference> locations, System.Activities.ActivityContext activityContext, bool computelocationsOffset) : 
                    base(locations, activityContext, false) {
                if ((computelocationsOffset == true)) {
                    this.SetLocationsOffset((locations.Count - expectedLocationsCount));
                }
            }
            
            public FincalActivity_TypedDataContext5_ForReadOnly(System.Collections.Generic.IList<System.Activities.Location> locations, bool computelocationsOffset) : 
                    base(locations, false) {
                if ((computelocationsOffset == true)) {
                    this.SetLocationsOffset((locations.Count - expectedLocationsCount));
                }
            }
            
            public FincalActivity_TypedDataContext5_ForReadOnly(System.Collections.Generic.IList<System.Activities.LocationReference> locationReferences) : 
                    base(locationReferences) {
            }
            
            internal new static System.Activities.XamlIntegration.CompiledDataContext[] GetCompiledDataContextCacheHelper(object dataContextActivities, System.Activities.ActivityContext activityContext, System.Activities.Activity compiledRoot, bool forImplementation, int compiledDataContextCount) {
                return System.Activities.XamlIntegration.CompiledDataContext.GetCompiledDataContextCache(dataContextActivities, activityContext, compiledRoot, forImplementation, compiledDataContextCount);
            }
            
            public new virtual void SetLocationsOffset(int locationsOffsetValue) {
                locationsOffset = locationsOffsetValue;
                base.SetLocationsOffset(locationsOffset);
            }
            
            internal System.Linq.Expressions.Expression @__Expr9GetTree() {
                
                #line 130 "D:\LEARN\C# NET\ASP.NET\MVC\资料\CODE\HEIMA8.OA\HEIMA8.OA.WORKFLOW\FINCALACTIVITY.XAML"
                System.Linq.Expressions.Expression<System.Func<string>> expression = () => 
                                          TempBookMarkName;
                
                #line default
                #line hidden
                return base.RewriteExpressionTree(expression);
            }
            
            [System.Diagnostics.DebuggerHiddenAttribute()]
            public string @__Expr9Get() {
                
                #line 130 "D:\LEARN\C# NET\ASP.NET\MVC\资料\CODE\HEIMA8.OA\HEIMA8.OA.WORKFLOW\FINCALACTIVITY.XAML"
                return 
                                          TempBookMarkName;
                
                #line default
                #line hidden
            }
            
            public string ValueType___Expr9Get() {
                this.GetValueTypeValues();
                return this.@__Expr9Get();
            }
            
            public new static bool Validate(System.Collections.Generic.IList<System.Activities.LocationReference> locationReferences, bool validateLocationCount, int offset) {
                if (((validateLocationCount == true) 
                            && (locationReferences.Count < 2))) {
                    return false;
                }
                if ((validateLocationCount == true)) {
                    offset = (locationReferences.Count - 2);
                }
                expectedLocationsCount = 2;
                return FincalActivity_TypedDataContext2_ForReadOnly.Validate(locationReferences, false, offset);
            }
        }
        
        [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Activities", "4.0.0.0")]
        [System.ComponentModel.BrowsableAttribute(false)]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        private class FincalActivity_TypedDataContext6 : FincalActivity_TypedDataContext2 {
            
            private int locationsOffset;
            
            private static int expectedLocationsCount;
            
            public FincalActivity_TypedDataContext6(System.Collections.Generic.IList<System.Activities.LocationReference> locations, System.Activities.ActivityContext activityContext, bool computelocationsOffset) : 
                    base(locations, activityContext, false) {
                if ((computelocationsOffset == true)) {
                    this.SetLocationsOffset((locations.Count - expectedLocationsCount));
                }
            }
            
            public FincalActivity_TypedDataContext6(System.Collections.Generic.IList<System.Activities.Location> locations, bool computelocationsOffset) : 
                    base(locations, false) {
                if ((computelocationsOffset == true)) {
                    this.SetLocationsOffset((locations.Count - expectedLocationsCount));
                }
            }
            
            public FincalActivity_TypedDataContext6(System.Collections.Generic.IList<System.Activities.LocationReference> locationReferences) : 
                    base(locationReferences) {
            }
            
            internal new static System.Activities.XamlIntegration.CompiledDataContext[] GetCompiledDataContextCacheHelper(object dataContextActivities, System.Activities.ActivityContext activityContext, System.Activities.Activity compiledRoot, bool forImplementation, int compiledDataContextCount) {
                return System.Activities.XamlIntegration.CompiledDataContext.GetCompiledDataContextCache(dataContextActivities, activityContext, compiledRoot, forImplementation, compiledDataContextCount);
            }
            
            public new virtual void SetLocationsOffset(int locationsOffsetValue) {
                locationsOffset = locationsOffsetValue;
                base.SetLocationsOffset(locationsOffset);
            }
            
            internal System.Linq.Expressions.Expression @__Expr11GetTree() {
                
                #line 101 "D:\LEARN\C# NET\ASP.NET\MVC\资料\CODE\HEIMA8.OA\HEIMA8.OA.WORKFLOW\FINCALACTIVITY.XAML"
                System.Linq.Expressions.Expression<System.Func<int>> expression = () => 
                                  Result;
                
                #line default
                #line hidden
                return base.RewriteExpressionTree(expression);
            }
            
            [System.Diagnostics.DebuggerHiddenAttribute()]
            public int @__Expr11Get() {
                
                #line 101 "D:\LEARN\C# NET\ASP.NET\MVC\资料\CODE\HEIMA8.OA\HEIMA8.OA.WORKFLOW\FINCALACTIVITY.XAML"
                return 
                                  Result;
                
                #line default
                #line hidden
            }
            
            public int ValueType___Expr11Get() {
                this.GetValueTypeValues();
                return this.@__Expr11Get();
            }
            
            [System.Diagnostics.DebuggerHiddenAttribute()]
            public void @__Expr11Set(int value) {
                
                #line 101 "D:\LEARN\C# NET\ASP.NET\MVC\资料\CODE\HEIMA8.OA\HEIMA8.OA.WORKFLOW\FINCALACTIVITY.XAML"
                
                                  Result = value;
                
                #line default
                #line hidden
            }
            
            public void ValueType___Expr11Set(int value) {
                this.GetValueTypeValues();
                this.@__Expr11Set(value);
                this.SetValueTypeValues();
            }
            
            internal System.Linq.Expressions.Expression @__Expr15GetTree() {
                
                #line 175 "D:\LEARN\C# NET\ASP.NET\MVC\资料\CODE\HEIMA8.OA\HEIMA8.OA.WORKFLOW\FINCALACTIVITY.XAML"
                System.Linq.Expressions.Expression<System.Func<string>> expression = () => 
                                    TempBookMarkName;
                
                #line default
                #line hidden
                return base.RewriteExpressionTree(expression);
            }
            
            [System.Diagnostics.DebuggerHiddenAttribute()]
            public string @__Expr15Get() {
                
                #line 175 "D:\LEARN\C# NET\ASP.NET\MVC\资料\CODE\HEIMA8.OA\HEIMA8.OA.WORKFLOW\FINCALACTIVITY.XAML"
                return 
                                    TempBookMarkName;
                
                #line default
                #line hidden
            }
            
            public string ValueType___Expr15Get() {
                this.GetValueTypeValues();
                return this.@__Expr15Get();
            }
            
            [System.Diagnostics.DebuggerHiddenAttribute()]
            public void @__Expr15Set(string value) {
                
                #line 175 "D:\LEARN\C# NET\ASP.NET\MVC\资料\CODE\HEIMA8.OA\HEIMA8.OA.WORKFLOW\FINCALACTIVITY.XAML"
                
                                    TempBookMarkName = value;
                
                #line default
                #line hidden
            }
            
            public void ValueType___Expr15Set(string value) {
                this.GetValueTypeValues();
                this.@__Expr15Set(value);
                this.SetValueTypeValues();
            }
            
            public new static bool Validate(System.Collections.Generic.IList<System.Activities.LocationReference> locationReferences, bool validateLocationCount, int offset) {
                if (((validateLocationCount == true) 
                            && (locationReferences.Count < 2))) {
                    return false;
                }
                if ((validateLocationCount == true)) {
                    offset = (locationReferences.Count - 2);
                }
                expectedLocationsCount = 2;
                return FincalActivity_TypedDataContext2.Validate(locationReferences, false, offset);
            }
        }
        
        [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Activities", "4.0.0.0")]
        [System.ComponentModel.BrowsableAttribute(false)]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        private class FincalActivity_TypedDataContext6_ForReadOnly : FincalActivity_TypedDataContext2_ForReadOnly {
            
            private int locationsOffset;
            
            private static int expectedLocationsCount;
            
            public FincalActivity_TypedDataContext6_ForReadOnly(System.Collections.Generic.IList<System.Activities.LocationReference> locations, System.Activities.ActivityContext activityContext, bool computelocationsOffset) : 
                    base(locations, activityContext, false) {
                if ((computelocationsOffset == true)) {
                    this.SetLocationsOffset((locations.Count - expectedLocationsCount));
                }
            }
            
            public FincalActivity_TypedDataContext6_ForReadOnly(System.Collections.Generic.IList<System.Activities.Location> locations, bool computelocationsOffset) : 
                    base(locations, false) {
                if ((computelocationsOffset == true)) {
                    this.SetLocationsOffset((locations.Count - expectedLocationsCount));
                }
            }
            
            public FincalActivity_TypedDataContext6_ForReadOnly(System.Collections.Generic.IList<System.Activities.LocationReference> locationReferences) : 
                    base(locationReferences) {
            }
            
            internal new static System.Activities.XamlIntegration.CompiledDataContext[] GetCompiledDataContextCacheHelper(object dataContextActivities, System.Activities.ActivityContext activityContext, System.Activities.Activity compiledRoot, bool forImplementation, int compiledDataContextCount) {
                return System.Activities.XamlIntegration.CompiledDataContext.GetCompiledDataContextCache(dataContextActivities, activityContext, compiledRoot, forImplementation, compiledDataContextCount);
            }
            
            public new virtual void SetLocationsOffset(int locationsOffsetValue) {
                locationsOffset = locationsOffsetValue;
                base.SetLocationsOffset(locationsOffset);
            }
            
            internal System.Linq.Expressions.Expression @__Expr10GetTree() {
                
                #line 89 "D:\LEARN\C# NET\ASP.NET\MVC\资料\CODE\HEIMA8.OA\HEIMA8.OA.WORKFLOW\FINCALACTIVITY.XAML"
                System.Linq.Expressions.Expression<System.Func<string>> expression = () => 
                                  TempBookMarkName;
                
                #line default
                #line hidden
                return base.RewriteExpressionTree(expression);
            }
            
            [System.Diagnostics.DebuggerHiddenAttribute()]
            public string @__Expr10Get() {
                
                #line 89 "D:\LEARN\C# NET\ASP.NET\MVC\资料\CODE\HEIMA8.OA\HEIMA8.OA.WORKFLOW\FINCALACTIVITY.XAML"
                return 
                                  TempBookMarkName;
                
                #line default
                #line hidden
            }
            
            public string ValueType___Expr10Get() {
                this.GetValueTypeValues();
                return this.@__Expr10Get();
            }
            
            internal System.Linq.Expressions.Expression @__Expr12GetTree() {
                
                #line 96 "D:\LEARN\C# NET\ASP.NET\MVC\资料\CODE\HEIMA8.OA\HEIMA8.OA.WORKFLOW\FINCALACTIVITY.XAML"
                System.Linq.Expressions.Expression<System.Func<string>> expression = () => 
                                  TempBookMarkName;
                
                #line default
                #line hidden
                return base.RewriteExpressionTree(expression);
            }
            
            [System.Diagnostics.DebuggerHiddenAttribute()]
            public string @__Expr12Get() {
                
                #line 96 "D:\LEARN\C# NET\ASP.NET\MVC\资料\CODE\HEIMA8.OA\HEIMA8.OA.WORKFLOW\FINCALACTIVITY.XAML"
                return 
                                  TempBookMarkName;
                
                #line default
                #line hidden
            }
            
            public string ValueType___Expr12Get() {
                this.GetValueTypeValues();
                return this.@__Expr12Get();
            }
            
            internal System.Linq.Expressions.Expression @__Expr13GetTree() {
                
                #line 110 "D:\LEARN\C# NET\ASP.NET\MVC\资料\CODE\HEIMA8.OA\HEIMA8.OA.WORKFLOW\FINCALACTIVITY.XAML"
                System.Linq.Expressions.Expression<System.Func<bool>> expression = () => 
                              Result==1;
                
                #line default
                #line hidden
                return base.RewriteExpressionTree(expression);
            }
            
            [System.Diagnostics.DebuggerHiddenAttribute()]
            public bool @__Expr13Get() {
                
                #line 110 "D:\LEARN\C# NET\ASP.NET\MVC\资料\CODE\HEIMA8.OA\HEIMA8.OA.WORKFLOW\FINCALACTIVITY.XAML"
                return 
                              Result==1;
                
                #line default
                #line hidden
            }
            
            public bool ValueType___Expr13Get() {
                this.GetValueTypeValues();
                return this.@__Expr13Get();
            }
            
            internal System.Linq.Expressions.Expression @__Expr14GetTree() {
                
                #line 184 "D:\LEARN\C# NET\ASP.NET\MVC\资料\CODE\HEIMA8.OA\HEIMA8.OA.WORKFLOW\FINCALACTIVITY.XAML"
                System.Linq.Expressions.Expression<System.Func<bool>> expression = () => 
                              Result ==0;
                
                #line default
                #line hidden
                return base.RewriteExpressionTree(expression);
            }
            
            [System.Diagnostics.DebuggerHiddenAttribute()]
            public bool @__Expr14Get() {
                
                #line 184 "D:\LEARN\C# NET\ASP.NET\MVC\资料\CODE\HEIMA8.OA\HEIMA8.OA.WORKFLOW\FINCALACTIVITY.XAML"
                return 
                              Result ==0;
                
                #line default
                #line hidden
            }
            
            public bool ValueType___Expr14Get() {
                this.GetValueTypeValues();
                return this.@__Expr14Get();
            }
            
            public new static bool Validate(System.Collections.Generic.IList<System.Activities.LocationReference> locationReferences, bool validateLocationCount, int offset) {
                if (((validateLocationCount == true) 
                            && (locationReferences.Count < 2))) {
                    return false;
                }
                if ((validateLocationCount == true)) {
                    offset = (locationReferences.Count - 2);
                }
                expectedLocationsCount = 2;
                return FincalActivity_TypedDataContext2_ForReadOnly.Validate(locationReferences, false, offset);
            }
        }
        
        [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Activities", "4.0.0.0")]
        [System.ComponentModel.BrowsableAttribute(false)]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        private class FincalActivity_TypedDataContext7 : FincalActivity_TypedDataContext2 {
            
            private int locationsOffset;
            
            private static int expectedLocationsCount;
            
            public FincalActivity_TypedDataContext7(System.Collections.Generic.IList<System.Activities.LocationReference> locations, System.Activities.ActivityContext activityContext, bool computelocationsOffset) : 
                    base(locations, activityContext, false) {
                if ((computelocationsOffset == true)) {
                    this.SetLocationsOffset((locations.Count - expectedLocationsCount));
                }
            }
            
            public FincalActivity_TypedDataContext7(System.Collections.Generic.IList<System.Activities.Location> locations, bool computelocationsOffset) : 
                    base(locations, false) {
                if ((computelocationsOffset == true)) {
                    this.SetLocationsOffset((locations.Count - expectedLocationsCount));
                }
            }
            
            public FincalActivity_TypedDataContext7(System.Collections.Generic.IList<System.Activities.LocationReference> locationReferences) : 
                    base(locationReferences) {
            }
            
            internal new static System.Activities.XamlIntegration.CompiledDataContext[] GetCompiledDataContextCacheHelper(object dataContextActivities, System.Activities.ActivityContext activityContext, System.Activities.Activity compiledRoot, bool forImplementation, int compiledDataContextCount) {
                return System.Activities.XamlIntegration.CompiledDataContext.GetCompiledDataContextCache(dataContextActivities, activityContext, compiledRoot, forImplementation, compiledDataContextCount);
            }
            
            public new virtual void SetLocationsOffset(int locationsOffsetValue) {
                locationsOffset = locationsOffsetValue;
                base.SetLocationsOffset(locationsOffset);
            }
            
            internal System.Linq.Expressions.Expression @__Expr17GetTree() {
                
                #line 160 "D:\LEARN\C# NET\ASP.NET\MVC\资料\CODE\HEIMA8.OA\HEIMA8.OA.WORKFLOW\FINCALACTIVITY.XAML"
                System.Linq.Expressions.Expression<System.Func<int>> expression = () => 
                                          Result;
                
                #line default
                #line hidden
                return base.RewriteExpressionTree(expression);
            }
            
            [System.Diagnostics.DebuggerHiddenAttribute()]
            public int @__Expr17Get() {
                
                #line 160 "D:\LEARN\C# NET\ASP.NET\MVC\资料\CODE\HEIMA8.OA\HEIMA8.OA.WORKFLOW\FINCALACTIVITY.XAML"
                return 
                                          Result;
                
                #line default
                #line hidden
            }
            
            public int ValueType___Expr17Get() {
                this.GetValueTypeValues();
                return this.@__Expr17Get();
            }
            
            [System.Diagnostics.DebuggerHiddenAttribute()]
            public void @__Expr17Set(int value) {
                
                #line 160 "D:\LEARN\C# NET\ASP.NET\MVC\资料\CODE\HEIMA8.OA\HEIMA8.OA.WORKFLOW\FINCALACTIVITY.XAML"
                
                                          Result = value;
                
                #line default
                #line hidden
            }
            
            public void ValueType___Expr17Set(int value) {
                this.GetValueTypeValues();
                this.@__Expr17Set(value);
                this.SetValueTypeValues();
            }
            
            public new static bool Validate(System.Collections.Generic.IList<System.Activities.LocationReference> locationReferences, bool validateLocationCount, int offset) {
                if (((validateLocationCount == true) 
                            && (locationReferences.Count < 2))) {
                    return false;
                }
                if ((validateLocationCount == true)) {
                    offset = (locationReferences.Count - 2);
                }
                expectedLocationsCount = 2;
                return FincalActivity_TypedDataContext2.Validate(locationReferences, false, offset);
            }
        }
        
        [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Activities", "4.0.0.0")]
        [System.ComponentModel.BrowsableAttribute(false)]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        private class FincalActivity_TypedDataContext7_ForReadOnly : FincalActivity_TypedDataContext2_ForReadOnly {
            
            private int locationsOffset;
            
            private static int expectedLocationsCount;
            
            public FincalActivity_TypedDataContext7_ForReadOnly(System.Collections.Generic.IList<System.Activities.LocationReference> locations, System.Activities.ActivityContext activityContext, bool computelocationsOffset) : 
                    base(locations, activityContext, false) {
                if ((computelocationsOffset == true)) {
                    this.SetLocationsOffset((locations.Count - expectedLocationsCount));
                }
            }
            
            public FincalActivity_TypedDataContext7_ForReadOnly(System.Collections.Generic.IList<System.Activities.Location> locations, bool computelocationsOffset) : 
                    base(locations, false) {
                if ((computelocationsOffset == true)) {
                    this.SetLocationsOffset((locations.Count - expectedLocationsCount));
                }
            }
            
            public FincalActivity_TypedDataContext7_ForReadOnly(System.Collections.Generic.IList<System.Activities.LocationReference> locationReferences) : 
                    base(locationReferences) {
            }
            
            internal new static System.Activities.XamlIntegration.CompiledDataContext[] GetCompiledDataContextCacheHelper(object dataContextActivities, System.Activities.ActivityContext activityContext, System.Activities.Activity compiledRoot, bool forImplementation, int compiledDataContextCount) {
                return System.Activities.XamlIntegration.CompiledDataContext.GetCompiledDataContextCache(dataContextActivities, activityContext, compiledRoot, forImplementation, compiledDataContextCount);
            }
            
            public new virtual void SetLocationsOffset(int locationsOffsetValue) {
                locationsOffset = locationsOffsetValue;
                base.SetLocationsOffset(locationsOffset);
            }
            
            internal System.Linq.Expressions.Expression @__Expr16GetTree() {
                
                #line 148 "D:\LEARN\C# NET\ASP.NET\MVC\资料\CODE\HEIMA8.OA\HEIMA8.OA.WORKFLOW\FINCALACTIVITY.XAML"
                System.Linq.Expressions.Expression<System.Func<string>> expression = () => 
                                          TempBookMarkName;
                
                #line default
                #line hidden
                return base.RewriteExpressionTree(expression);
            }
            
            [System.Diagnostics.DebuggerHiddenAttribute()]
            public string @__Expr16Get() {
                
                #line 148 "D:\LEARN\C# NET\ASP.NET\MVC\资料\CODE\HEIMA8.OA\HEIMA8.OA.WORKFLOW\FINCALACTIVITY.XAML"
                return 
                                          TempBookMarkName;
                
                #line default
                #line hidden
            }
            
            public string ValueType___Expr16Get() {
                this.GetValueTypeValues();
                return this.@__Expr16Get();
            }
            
            internal System.Linq.Expressions.Expression @__Expr18GetTree() {
                
                #line 155 "D:\LEARN\C# NET\ASP.NET\MVC\资料\CODE\HEIMA8.OA\HEIMA8.OA.WORKFLOW\FINCALACTIVITY.XAML"
                System.Linq.Expressions.Expression<System.Func<string>> expression = () => 
                                          TempBookMarkName;
                
                #line default
                #line hidden
                return base.RewriteExpressionTree(expression);
            }
            
            [System.Diagnostics.DebuggerHiddenAttribute()]
            public string @__Expr18Get() {
                
                #line 155 "D:\LEARN\C# NET\ASP.NET\MVC\资料\CODE\HEIMA8.OA\HEIMA8.OA.WORKFLOW\FINCALACTIVITY.XAML"
                return 
                                          TempBookMarkName;
                
                #line default
                #line hidden
            }
            
            public string ValueType___Expr18Get() {
                this.GetValueTypeValues();
                return this.@__Expr18Get();
            }
            
            public new static bool Validate(System.Collections.Generic.IList<System.Activities.LocationReference> locationReferences, bool validateLocationCount, int offset) {
                if (((validateLocationCount == true) 
                            && (locationReferences.Count < 2))) {
                    return false;
                }
                if ((validateLocationCount == true)) {
                    offset = (locationReferences.Count - 2);
                }
                expectedLocationsCount = 2;
                return FincalActivity_TypedDataContext2_ForReadOnly.Validate(locationReferences, false, offset);
            }
        }
    }
}
