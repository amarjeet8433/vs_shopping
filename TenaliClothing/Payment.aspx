<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="padding-top: 20px">
        <div class="col-md-8">
            <div class="form-horizontal">
                <h3 style="color: wheat">Delivery Address</h3>
                <hr />

                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" ForeColor="DarkGray" CssClass="col-md-2 control-label" Text="Name"></asp:Label>
                    <div class="col-md-7">
                        <asp:TextBox ID="txtName" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" CssClass="text-danger" runat="server" ErrorMessage="This field is required !" ControlToValidate="txtName"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" ForeColor="DarkGray" CssClass="col-md-2 control-label" Text="Address"></asp:Label>
                    <div class="col-md-7">
                        <asp:TextBox ID="txtAddress" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorAddress" CssClass="text-danger" runat="server" ErrorMessage="This field is required !" ControlToValidate="txtAddress"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">
                    <asp:Label ID="Label3" runat="server" ForeColor="DarkGray" CssClass="col-md-2 control-label" Text="Pin Code"></asp:Label>
                    <div class="col-md-7">
                        <asp:TextBox ID="txtPinCode" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPinCode" CssClass="text-danger" runat="server" ErrorMessage="This field is required !" ControlToValidate="txtPinCode"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="btnDone" runat="server" Text="Done" CssClass="btn btn-success" OnClick="btnDone_Click" />
                        <div>
                            <br />
                            <br />
                            <br />
                            <br />
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-4" runat="server" id="divPriceDetails">
            <div style="border-bottom: 1px solid #eaeaec;">
                <h5 style="color: white">PRICE DETAILS</h5>
                <div>
                    <label style="color: white">Cart Total</label>
                    <span class="pull-right priceGray" style="color:white" id="spanCartTotal" runat="server"></span>
                </div>
                <div>
                    <label style="color: darkgray">Cart Discount</label>
                    <span class="pull-right priceGreen" id="spanDiscount" runat="server"></span>
                </div>
            </div>
            <div>
                <div class="proPriceView">
                    <label style="color: darkgrey">Total</label>
                    <span style="color: gray" class="pull-right" id="spanTotal" runat="server"></span>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

