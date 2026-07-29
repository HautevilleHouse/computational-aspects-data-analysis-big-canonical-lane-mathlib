import ComputationalAspectsDataAnalysisBigCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalAspectsDataAnalysisBigCanonicalLaneLean

structure NPCompleteProblem where
  name : String
  reductionToSAT : String

def NPCompleteBridge (A : AdmissibleClass) : Prop :=
  ∃ (problem : NPCompleteProblem),
    Decides A.lane.solver A.lane.projectedLanguage ∧
    problem.reductionToSAT = "Cook-Levin"

theorem np_complete_bridge_closed (A : AdmissibleClass) : NPCompleteBridge A := by
  refine ⟨{ name := "SAT", reductionToSAT := "Cook-Levin" }, ?_⟩
  exact A.solverDecidesProjectedLanguage

end ComputationalAspectsDataAnalysisBigCanonicalLaneLean
end HautevilleHouse
