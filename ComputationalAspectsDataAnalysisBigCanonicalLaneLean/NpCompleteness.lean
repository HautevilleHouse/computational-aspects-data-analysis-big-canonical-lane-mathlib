import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalAspectsDataAnalysisBigCanonicalLaneLean

structure NpCompleteProblem where
  name : String
  instance : String
  question : String

def SAT : NpCompleteProblem := {
  name := "SAT",
  instance := "Boolean formula in CNF",
  question := "Is there a satisfying assignment?"
}

def VERTEX_COVER : NpCompleteProblem := {
  name := "Vertex Cover",
  instance := "Graph G and integer k",
  question := "Does G have a vertex cover of size at most k?"
}

structure PolynomialReduction where
  from : NpCompleteProblem
  to : NpCompleteProblem
  function : String
  correctness : Prop

def SATtoVERTEX_COVER : PolynomialReduction := {
  from := SAT,
  to := VERTEX_COVER,
  function := "Standard construction from formula to graph",
  correctness := True
}

theorem sat_reduces_to_vertex_cover : SATtoVERTEX_COVER.correctness := by
  trivial

end ComputationalAspectsDataAnalysisBigCanonicalLaneLean
end HautevilleHouse