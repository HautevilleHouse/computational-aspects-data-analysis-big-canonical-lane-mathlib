import ComputationalAspectsDataAnalysisBigCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ComputationalAspectsDataAnalysisBigCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end ComputationalAspectsDataAnalysisBigCanonicalLaneLean
end HautevilleHouse
