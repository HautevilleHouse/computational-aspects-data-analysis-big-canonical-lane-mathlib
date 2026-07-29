import ComputationalAspectsDataAnalysisBigCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalAspectsDataAnalysisBigCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  Decides A.lane.solver A.lane.projectedLanguage

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.solverDecidesProjectedLanguage

end ComputationalAspectsDataAnalysisBigCanonicalLaneLean
end HautevilleHouse
