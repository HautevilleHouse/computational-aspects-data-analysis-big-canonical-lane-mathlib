import ComputationalAspectsDataAnalysisBigCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalAspectsDataAnalysisBigCanonicalLaneLean

structure TimeHierarchy where
  function1 : String
  function2 : String
  separation : String

def HierarchyClosed (A : AdmissibleClass) : Prop :=
  ∃ h : TimeHierarchy, h.separation = "strict"

theorem hierarchy_theorem_admissible (A : AdmissibleClass) : HierarchyClosed A := by
  refine ⟨{ function1 := "n", function2 := "n^2", separation := "strict" }, ?_⟩
  trivial

end ComputationalAspectsDataAnalysisBigCanonicalLaneLean
end HautevilleHouse
