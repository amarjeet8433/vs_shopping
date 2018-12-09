<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AddSize.aspx.cs" Inherits="AddSize" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <br />
    <br />
    <div class="container">
        <div class="form-horizontal">
            <h2 style="color:wheat">Add Size</h2>
            <hr />

            <div class="form-group">
                <asp:Label ID="Label2" runat="server" ForeColor="DarkGray" CssClass="col-md-2 control-label" Text="Size Name"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtSizeName" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorSizeName" CssClass="text-danger" runat="server" ErrorMessage="This field is required !" ControlToValidate="txtSizeName"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label1" runat="server" ForeColor="DarkGray" CssClass="col-md-2 control-label" Text="Brand"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlBrand" CssClass="form-control" runat="server"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorBrand" CssClass="text-danger" runat="server" ErrorMessage="This field is required !" ControlToValidate="ddlBrand" InitialValue="0"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label3" runat="server" ForeColor="DarkGray" CssClass="col-md-2 control-label" Text="Category"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlCategory" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control" runat="server"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorCat" CssClass="text-danger" runat="server" ErrorMessage="This field is required !" ControlToValidate="ddlCategory" InitialValue="0"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label4" runat="server" ForeColor="DarkGray" CssClass="col-md-2 control-label" Text="Sub Category"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlSubCat" CssClass="form-control" runat="server"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorSubCat" CssClass="text-danger" runat="server" ErrorMessage="This field is required !" ControlToValidate="ddlSubCat" InitialValue="0"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label5" runat="server" ForeColor="DarkGray" CssClass="col-md-2 control-label" Text="Gender"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlGender" CssClass="form-control" runat="server"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorGender" CssClass="text-danger" runat="server" ErrorMessage="This field is required !" ControlToValidate="ddlGender" InitialValue="0"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="btn btn-default" OnClick="btnAdd_Click" />
                </div>
            </div>

        </div>

        <h1 style="color:white">Size</h1>
        <hr />
        <div class="panel panel-default">
            <!-- Default Panel Contents -->
            <div class="panel-heading">All Size</div>
            <asp:Repeater ID="rptrSize" runat="server">
                <HeaderTemplate>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Name</th>
                                <th>Brand</th>
                                <th>Category</th>
                                <th>Sub Category</th>
                                <th>Gender</th>
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <th><%# Eval("SizeID") %></th>
                        <td><%# Eval("SizeName") %></td>
                        <td><%# Eval("Name") %></td>
                        <td><%# Eval("CatName") %></td>
                        <td><%# Eval("SubCatName") %></td>
                        <td><%# Eval("GenderName") %></td>
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

