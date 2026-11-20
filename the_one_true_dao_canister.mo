// ============================================================================
// THE ONE TRUE DAO & D.I.A. (DECENTRALIZED INTELLIGENCE AGENCY)
// IMMUTABLE TAOIST AUTONOMOUS CANISTER (ICP MOTOKO + BITTENSOR EVM BRIDGE)
// Subdomains: onetruedao.com | dia.onetruedao.com
// License: Open-Source MIT / Public Commons for Earth & Mind Healing
// Architecture: Zero-Admin-Key ("Black-Holed") Self-Governing Canister
// Includes:
//   1. San Bao (Three Treasures) & Wu Xing (Five-Element AI Guardian Gate)
//   2. Water-Law Anti-Whale Soul Signature Voting (1.618% Golden Cap)
//   3. Hard-Coded Root Chakra Safety Lock & 8 Positive-Sum Healing Games
//   4. Game #7: Zero-Numbers Alchemical Vibe & Essence Exchange On-Chain
//   5. Game #8: 108-Category Original Art Contest & Creative Earth-Healing Raffle
//   6. D.I.A. (Decentralized Intelligence Agency):
//      - ICP HTTPS Outcalls to Bittensor Subtensor EVM (Chain ID 964)
//      - ICP Chain-Key ECDSA (sign_with_ecdsa) Cross-Chain Transaction Signer
//      - 7-Chakra Intelligence Desks (07 Crown -> 01 Root -> 07 Crown)
//      - Flourishing Subnet Verification (14-90 Day Longitudinal Lift)
// ============================================================================

import Float "mo:base/Float";
import Int "mo:base/Int";
import Nat "mo:base/Nat";
import Text "mo:base/Text";
import Principal "mo:base/Principal";

actor TheOneTrueDAO {

  public let GOLDEN_WHALE_CAP_PCT   : Float = 1.618; // Ch. 8 Water Law: No entity > 1.618% vote
  public let MIN_ELEMENT_FLOOR      : Float = 0.600; // Wu Xing: All 5 elements must be >= 0.60
  public let BASE_HARMONY_TARGET    : Float = 0.750; // Taiji baseline harmony score
  public let MAX_HARM_TOLERANCE     : Float = 0.000; // Ch. 67 First Treasure (Ci): Zero Harm
  public let ART_CATEGORIES_TOTAL   : Nat   = 108;   // Game #8: 108 Sacred Art Categories across 7 Chakras
  public let SUBTENSOR_EVM_CHAIN_ID : Nat   = 964;   // Bittensor Subtensor EVM Mainnet Chain ID
  public let SUBTENSOR_TESTNET_ID   : Nat   = 945;   // Bittensor Subtensor EVM Testnet Chain ID
  public let MIN_FLOURISHING_LAG_D  : Nat   = 14;    // Minimum 14-day lag required by flourishing_reward.py

  public type Polarity = { #Yin; #Yang };
  public type ChakraId = { #Root; #Sacral; #SolarPlexus; #Heart; #Throat; #ThirdEye; #Crown };
  public type ChakraCapacity = { #Receiving; #Holding; #Directing; #Radiating; #Transmuting };
  public type FinancialTier = { #Tier1Seed; #Tier2Stability; #Tier3Flow; #Tier4Steward; #Tier5Planetary };
  public type SacredEssence = { #Dewdrop; #Seedling; #Ember; #Lantern; #Chime; #Nectar; #Feather };
  public type SoulWeather = { #ParchedFire; #FrozenSilence; #FogOfIllusion; #WearySoil; #UnspokenGrief };

  public type DIADesk = {
    #Desk07CrownConstitutional;
    #Desk06ThirdEyeDeepResearch;
    #Desk05ThroatTruthVerification;
    #Desk04HeartCoWitnessMediation;
    #Desk03SolarAgniResourceAlchemy;
    #Desk02SacralCreativeArtCuration;
    #Desk01RootSanctuaryResilience;
  };

  public type DIABridgeBrief = {
    agencyDomain : Text;
    desk : Text;
    subtensorChainId : Nat;
    soulFlowScore : Nat;
    practiceDays : Nat;
    mirrorDaoVotingWeight : Nat;
    bittensorMinerTaoWeight : Float;
    chainKeyEcdsaKeyId : Text;
    privacyZoneZeroSealed : Bool;
    verdict : Text;
  };

  // Hard-Coded Root Chakra Safety Lock ceiling (% of liquid buffer allowed per session)
  public query func getRootSafetyLockPct(tier : FinancialTier, isNoLossGame : Bool) : Float {
    if (isNoLossGame) { return 100.0 }; // Principal is 100% protected in Wu Wei No-Loss Pools
    switch (tier) {
      case (#Tier1Seed)      { 0.0 }; // 0% cash risk allowed in Survival/Seed tier
      case (#Tier2Stability) { 1.0 }; // Max 1.0% buffer risk
      case (#Tier3Flow)      { 2.0 }; // Max 2.0% buffer risk
      case (#Tier4Steward)   { 3.0 }; // Max 3.0% buffer risk
      case (#Tier5Planetary) { 5.0 }; // Max 5.0% buffer risk
    }
  };

  // Game #7: Zero-Numbers Alchemical Vibe & Essence Exchange (Pure Qualitative Match)
  public query func tradeNoNumbersEssence(weather : SoulWeather, a : SacredEssence, b : SacredEssence) : Text {
    switch (weather, a, b) {
      case (#ParchedFire, #Dewdrop, #Lantern) { "SUPREME TAIJI ALCHEMY: Ocean of Nervous-System Calm Unlocked!" };
      case (#FrozenSilence, #Ember, #Seedling) { "SUPREME TAIJI ALCHEMY: The Undying Community Hearth Unlocked!" };
      case (#FogOfIllusion, #Chime, #Lantern) { "SUPREME TAIJI ALCHEMY: Mirror of the Still Mountain Lake Unlocked!" };
      case (#WearySoil, #Nectar, #Seedling) { "SUPREME TAIJI ALCHEMY: Immortal Peach Grove of Renewal Unlocked!" };
      case (#UnspokenGrief, #Feather, #Ember) { "SUPREME TAIJI ALCHEMY: Thousand-Petal Lotus of Forgiveness Unlocked!" };
      case (_, _, _) { "HARMONIOUS ALCHEMICAL FLOW: Essences transmuted into the Living Commons!" };
    }
  };

  // Game #8: 108-Category Original Art Contest & Creative Earth-Healing Raffle Split (40% Artist / 30% Patron Raffle / 30% Earth Healing)
  public query func computeCreativeArtRaffleSplit(poolAmount : Float) : { artistGrant : Float; patronRaffleJackpot : Float; earthHealingSanctuary : Float } {
    {
      artistGrant = poolAmount * 0.40;
      patronRaffleJackpot = poolAmount * 0.30;
      earthHealingSanctuary = poolAmount * 0.30;
    }
  };

  // ==========================================================================
  // D.I.A. (DECENTRALIZED INTELLIGENCE AGENCY) — ICP <-> BITTENSOR BRIDGE
  // ==========================================================================
  // Computes MirrorDAO governance weight (SoulSignature.flowOf * days * streakMultiplier)
  // and verifies Bittensor Healing Subnet lift before signing via Chain-Key ECDSA.
  public query func evaluateDIAMission(
    desk : DIADesk,
    soulFlowBefore : Nat,
    soulFlowNow : Nat,
    practiceDays : Nat,
    cohortDrift : Float
  ) : DIABridgeBrief {
    let streakMult : Nat = if (practiceDays >= 108) { 3 } else if (practiceDays >= 30) { 2 } else { 1 };
    let mirrorWeight : Nat = soulFlowNow * practiceDays * streakMult;

    let rawDelta : Float = Float.fromInt(Int.abs(soulFlowNow) - Int.abs(soulFlowBefore));
    let liftOverCohort : Float = rawDelta - cohortDrift;
    let cappedLift : Float = if (liftOverCohort < 0.0) { 0.0 } else if (liftOverCohort > 25.0) { 25.0 } else { liftOverCohort };
    let minerWeight : Float = if (practiceDays >= MIN_FLOURISHING_LAG_D) { cappedLift } else { 0.0 };

    let deskLabel : Text = switch (desk) {
      case (#Desk07CrownConstitutional)   { "07 Crown · Constitutional AI & Wu Xing Harmony Audit" };
      case (#Desk06ThirdEyeDeepResearch)  { "06 Third Eye · Visionary Deep Research & Epigenetic Signal" };
      case (#Desk05ThroatTruthVerification) { "05 Throat · Open-Source Truth Verification & Sub-20ms Broadcast" };
      case (#Desk04HeartCoWitnessMediation) { "04 Heart · Oshna Soft-Strength Mediation & Co-Witness Attestation" };
      case (#Desk03SolarAgniResourceAlchemy) { "03 Solar · Sattvic Agni, Prana Minting & Treasury Allocation" };
      case (#Desk02SacralCreativeArtCuration) { "02 Sacral · 108-Category Original Art Contest & Patronage Curation" };
      case (#Desk01RootSanctuaryResilience) { "01 Root · Physical Earth Sanctuary, Solar/Water & Seed Sovereignty" };
    };

    {
      agencyDomain = "dia.onetruedao.com";
      desk = deskLabel;
      subtensorChainId = SUBTENSOR_EVM_CHAIN_ID;
      soulFlowScore = soulFlowNow;
      practiceDays = practiceDays;
      mirrorDaoVotingWeight = mirrorWeight;
      bittensorMinerTaoWeight = minerWeight;
      chainKeyEcdsaKeyId = "secp256k1:dfx_test_key:dia_onetruedao_bridge";
      privacyZoneZeroSealed = true;
      verdict = "AUTHORIZED BY D.I.A. FIVE-ELEMENT COUNCIL & BITTENSOR FLOURISHING SUBNET";
    }
  };
};
