<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AddProduct.aspx.cs" Inherits="AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <br />
    <br />
    <div class="container">
        <div class="form-horizontal">
            <h2 style="color:wheat">Add Product</h2>
            <hr />

            <div class="form-group">
                <asp:Label ID="Label1" runat="server" ForeColor="DarkGray" CssClass="col-md-2 control-label" Text="Name"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtPName" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPName" CssClass="text-danger" runat="server" ErrorMessage="This field is required !" ControlToValidate="txtPName"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" ForeColor="DarkGray" CssClass="col-md-2 control-label" Text="Price"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtPPrice" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPPrice" CssClass="text-danger" runat="server" ErrorMessage="This field is required !" ControlToValidate="txtPPrice"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label3" runat="server" ForeColor="DarkGray" CssClass="col-md-2 control-label" Text="Selling Price"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtSelPrice" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorSelPrice" CssClass="text-danger" runat="server" ErrorMessage="This field is required !" ControlToValidate="txtSelPrice"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label4" runat="server" ForeColor="DarkGray" CssClass="col-md-2 control-label" Text="Brand"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlBrands" CssClass="form-control" runat="server"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorBrands" CssClass="text-danger" runat="server" ErrorMessage="This field is required !" ControlToValidate="ddlBrands" InitialValue="0"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label5" runat="server" ForeColor="DarkGray" CssClass="col-md-2 control-label" Text="Category"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlCategory" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control" runat="server"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorCategory" CssClass="text-danger" runat="server" ErrorMessage="This field is required !" ControlToValidate="ddlCategory" InitialValue="0"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label6" runat="server" ForeColor="DarkGray" CssClass="col-md-2 control-label" Text="Sub Category"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlSubCategory" OnSelectedIndexChanged="ddlSubCategory_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control" runat="server"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorSubCat" CssClass="text-danger" runat="server" ErrorMessage="This field is required !" ControlToValidate="ddlSubCategory" InitialValue="0"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label19" runat="server" ForeColor="DarkGray" CssClass="col-md-2 control-label" Text="Gender"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlGender" OnSelectedIndexChanged="ddlGender_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control" runat="server"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorGender" CssClass="text-danger" runat="server" ErrorMessage="This field is required !" ControlToValidate="ddlGender" InitialValue="0"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label7" runat="server" ForeColor="DarkGray" CssClass="col-md-2 control-label" Text="Size"></asp:Label>
                <div class="col-md-3">
                    <asp:CheckBoxList ID="cblSize" CssClass="form-control" runat="server" RepeatDirection="Horizontal"></asp:CheckBoxList>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label20" runat="server" ForeColor="DarkGray" CssClass="col-md-2 control-label" Text="Quantity"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtQuantity" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorQuantity" CssClass="text-danger" runat="server" ErrorMessage="This field is required !" ControlToValidate="txtQuantity"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label8" runat="server" ForeColor="DarkGray" CssClass="col-md-2 control-label" Text="Descriptions"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtDesc" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorDesc" CssClass="text-danger" runat="server" ErrorMessage="This field is required !" ControlToValidate="txtDesc"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label9" runat="server" ForeColor="DarkGray" CssClass="col-md-2 control-label" Text="Product Details"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtPDetails" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPDetails" CssClass="text-danger" runat="server" ErrorMessage="This field is required !" ControlToValidate="txtPDetails"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label10" runat="server" ForeColor="DarkGray" CssClass="col-md-2 control-label" Text="Material & Care"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtMatCare" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorMatCare" CssClass="text-danger" runat="server" ErrorMessage="This field is required !" ControlToValidate="txtMatCare"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label11" runat="server" ForeColor="DarkGray" CssClass="col-md-2 control-label" Text="Upload Image"></asp:Label>
                <div class="col-md-3">
                    <asp:FileUpload ID="fuImg01" CssClass="form-control" runat="server" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorfuImg01" CssClass="text-danger" runat="server" ErrorMessage="This field is required !" ControlToValidate="fuImg01"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label12" runat="server" ForeColor="DarkGray" CssClass="col-md-2 control-label" Text="Upload Image"></asp:Label>
                <div class="col-md-3">
                    <asp:FileUpload ID="fuImg02" CssClass="form-control" runat="server" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorfuImg02" CssClass="text-danger" runat="server" ErrorMessage="This field is required !" ControlToValidate="fuImg02"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label13" runat="server" ForeColor="DarkGray" CssClass="col-md-2 control-label" Text="Upload Image"></asp:Label>
                <div class="col-md-3">
                    <asp:FileUpload ID="fuImg03" CssClass="form-control" runat="server" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorfuImg03" CssClass="text-danger" runat="server" ErrorMessage="This field is required !" ControlToValidate="fuImg03"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label14" runat="server" ForeColor="DarkGray" CssClass="col-md-2 control-label" Text="Upload Image"></asp:Label>
                <div class="col-md-3">
                    <asp:FileUpload ID="fuImg04" CssClass="form-control" runat="server" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorfuImg04" CssClass="text-danger" runat="server" ErrorMessage="This field is required !" ControlToValidate="fuImg04"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label15" runat="server" ForeColor="DarkGray" CssClass="col-md-2 control-label" Text="Upload Image"></asp:Label>
                <div class="col-md-3">
                    <asp:FileUpload ID="fuImg05" CssClass="form-control" runat="server" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorfuImg05" CssClass="text-danger" runat="server" ErrorMessage="This field is required !" ControlToValidate="fuImg05"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label16" runat="server" ForeColor="DarkGray" CssClass="col-md-2 control-label" Text="Free Delivery"></asp:Label>
                <div class="col-md-3">
                    <asp:CheckBox ID="cbFD" runat="server" />
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label17" runat="server" ForeColor="DarkGray" CssClass="col-md-2 control-label" Text="30 Days Return"></asp:Label>
                <div class="col-md-3">
                    <asp:CheckBox ID="cb30Ret" runat="server" />
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="btn btn-default" OnClick="btnAdd_Click" />
                </div>
            </div>

        </div>
    </div>
</asp:Content>

