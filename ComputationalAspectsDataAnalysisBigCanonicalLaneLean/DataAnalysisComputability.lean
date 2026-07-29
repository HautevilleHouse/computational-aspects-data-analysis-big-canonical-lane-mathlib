import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalAspectsDataAnalysisBigCanonicalLaneLean

structure DataAnalysisProblem where
  inputType : String
  queryType : String
  outputType : String
  computable : Prop

def AGGREGATE : DataAnalysisProblem := {
  inputType := "list of numbers",
  queryType := "sum",
  outputType := "number",
  computable := True
}

def CLUSTERING : DataAnalysisProblem := {
  inputType := "set of points in R^d",
  queryType := "k-means optimal clustering",
  outputType := "set of centers",
  computable := False
}

theorem aggregate_computable : AGGREGATE.computable := by
  trivial

theorem clustering_not_computable : ¬ CLUSTERING.computable := by
  intro h
  exact h

end ComputationalAspectsDataAnalysisBigCanonicalLaneLean
end HautevilleHouse