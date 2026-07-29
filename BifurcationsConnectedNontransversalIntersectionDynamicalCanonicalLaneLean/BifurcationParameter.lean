import .NontransversalIntersection

namespace HautevilleHouse
namespace BifurcationsConnectedNontransversalIntersectionDynamicalCanonicalLaneLean

structure BifurcationParameterPackage {A : BifurcationAdmittedObject} (NT : NontransversalIntersectionPackage A) where
  parameterSpace : Type u
  parameterTopology : TopologicalSpace parameterSpace
  bifurcationValue : parameterSpace
  crossingCondition : Prop
  structuralStabilityChange : Prop

structure BifurcationParameterEvidence {A : BifurcationAdmittedObject} {NT : NontransversalIntersectionPackage A} (BP : BifurcationParameterPackage NT) where
  crossingConditionClosed : BP.crossingCondition
  structuralStabilityChangeClosed : BP.structuralStabilityChange

def BifurcationParameterClosed {A : BifurcationAdmittedObject} {NT : NontransversalIntersectionPackage A} (BP : BifurcationParameterPackage NT) : Prop :=
  BP.crossingCondition ∧ BP.structuralStabilityChange

theorem bifurcation_parameter_closed_from_evidence {A : BifurcationAdmittedObject} {NT : NontransversalIntersectionPackage A} (BP : BifurcationParameterPackage NT) (E : BifurcationParameterEvidence BP) : BifurcationParameterClosed BP :=
  And.intro E.crossingConditionClosed E.structuralStabilityChangeClosed

end BifurcationsConnectedNontransversalIntersectionDynamicalCanonicalLaneLean
end HautevilleHouse