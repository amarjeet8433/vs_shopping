<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AddBrand.aspx.cs" Inherits="AddBrand" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <br />
    <br />
    <div class="container">
        <div class="form-horizontal">
            <h2 style="color:wheat">Add Brand</h2>
            <hr />

            <div class="form-group">
                <asp:Label ID="Label1" runat="server" ForeColor="DarkGray" CssClass="col-md-2 control-label" Text="Brand Name"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtBrandName" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorBName" CssClass="text-danger" runat="server" ErrorMessage="This field is required !" ControlToValidate="txtBrandName"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="btn btn-default" OnClick="btnAdd_Click" />
                </div>
            </div>
        </div>

        <h1 style="color:white">Brands</h1>
        <hr />
        <div class="panel panel-default">
            <!-- Default Panel Contents -->
            <div class="panel-heading">All Brands</div>
            <asp:Repeater ID="rptrBrands" runat="server">
                <HeaderTemplate>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Brand</th>
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <th><%# Eval("BrandID") %></th>
                        <td><%# Eval("Name") %></td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </tbody>
                </table>
                </FooterTemplate>
            </asp:Repeater>
        </div>

    </div>
</asp:Content>

