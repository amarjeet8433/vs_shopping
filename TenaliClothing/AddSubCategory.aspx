<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AddSubCategory.aspx.cs" Inherits="AddSubCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <br />
    <br />
    <div class="container">
        <div class="form-horizontal">
            <h2 style="color:wheat">Add Sub Category</h2>
            <hr />

            <div class="form-group">
                <asp:Label ID="Label1" runat="server" ForeColor="DarkGray" CssClass="col-md-2 control-label" Text="Main Category"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlCategory" CssClass="form-control" runat="server"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorMainCat" CssClass="text-danger" runat="server" ErrorMessage="This field is required !" ControlToValidate="ddlCategory" InitialValue="0"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label2" runat="server" ForeColor="DarkGray" CssClass="col-md-2 control-label" Text="Sub Category"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtSubCatName" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorSubCatName" CssClass="text-danger" runat="server" ErrorMessage="This field is required !" ControlToValidate="txtSubCatName"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="btn btn-default" OnClick="btnAdd_Click" />
                </div>
            </div>

        </div>

        <h1 style="color:white">Sub Categories</h1>
        <hr />
        <div class="panel panel-default">
            <!-- Default Panel Contents -->
            <div class="panel-heading">All Sub Categories</div>
            <asp:Repeater ID="rptrSubCategories" runat="server">
                <HeaderTemplate>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Main Category</th>
                                <th>Sub Category</th>
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <th><%# Eval("SubCatID") %></th>
                        <td><%# Eval("SubCatName") %></td>
                        <td><%# Eval("CatName") %></td>
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

