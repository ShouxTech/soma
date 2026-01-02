declare namespace Soma {
	function isCharacter(char: Instance | undefined): char is Model & { Humanoid: Humanoid };

	function humanoid(char: Model): Humanoid | undefined;

	function rootPart(char: Model): BasePart | undefined;
	function torso(char: Model): BasePart | undefined;
	function leftArm(char: Model): BasePart | undefined;
	function rightArm(char: Model): BasePart | undefined;
	function leftLeg(char: Model): BasePart | undefined;
	function rightLeg(char: Model): BasePart | undefined;

	function player(char: Model): Player | undefined;

	function isAlive(char: Model): boolean;
}

export = Soma;