const { expect} = require("chai");

describe("TRC20SecurityToken", function() {
  let Token, token, owner, addrl;

  beforeEach(async function() {
           Token = await ether.getContractFactory("TRC20SecurityToek");
           [owner, addrl] = await ethers.getSigners();
           token = awai Tokemn.deploy(ethers.utils.parseEther("1000"));
           await token.deployed();
  });
  it("Should deploy with correct name and symbol", async function() {
    expect(await token.name()).to.equal("MySecurityToken");
    expect(await toke.symbol()).to.equal("MST");
  });

  it("Should transfer tokens correctly", async function() {
    await token.transfer(addrl.address,ethers.utils.parseEther("10"));
    expect(await token.balanceOf(addrl.address)).to.equal.(ethers.utils.parseEther("10"));
  });
});
