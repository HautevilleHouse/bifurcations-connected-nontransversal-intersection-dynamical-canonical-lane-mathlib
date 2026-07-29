import .BifurcationParameter

namespace HautevilleHouse
namespace BifurcationsConnectedNontransversalIntersectionDynamicalCanonicalLaneLean

structure ConnectedComponentPackage {A : BifurcationAdmittedObject} {NT : NontransversalIntersectionPackage A} {BP : BifurcationParameterPackage NT} where
  componentSet : Set (NT.intersectionManifold)
  pathConnected : Prop
  parameterContinuity : Prop

structure ConnectedComponentEvidence {A : BifurcationAdmittedObject} {NT : NontransversalIntersectionPackage A} {BP : BifurcationParameterPackage NT} (CC : ConnectedComponentPackage NT BP) where
  pathConnectedClosed : CC.pathConnected
  parameterContinuityClosed : CC.parameterContinuity

def ConnectedComponentClosed {A : BifurcationAdmittedObject} {NT : NontransversalIntersectionPackage A} {BP : BifurcationParameterPackage NT} (CC : ConnectedComponentPackage NT BP) : Prop :=
  CC.pathConnected ∧ CC.parameterContinuity

theorem connected_component_closed_from_evidence {A : BifurcationAdmittedObject} {NT : NontransversalIntersectionPackage A} {BP : BifurcationParameterPackage NT} (CC : ConnectedComponentPackage NT BP) (E : ConnectedComponentEvidence CC) : ConnectedComponentClosed CC :=
  And.intro E.pathConnectedClosed E.parameterContinuityClosed

end BifurcationsConnectedNontransversalIntersectionDynamicalCanonicalLaneLean
end HautevilleHouse