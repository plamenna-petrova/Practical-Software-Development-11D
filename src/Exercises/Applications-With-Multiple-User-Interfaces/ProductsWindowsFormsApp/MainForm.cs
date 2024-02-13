using ProductsWindowsFormsApp.Business;
using ProductsWindowsFormsApp.Data.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace ProductsWindowsFormsApp
{
    public partial class MainForm : Form
    {
        private ProductBusiness productBusiness = new ProductBusiness();

        private int editedProductId = 0;

        public MainForm()
        {
            InitializeComponent();
        }

        private void MainForm_Load(object sender, EventArgs eventArgs)
        {
            UpdateGrid();
            ClearTextBoxes();
        }

        private void insertProductButton_Click(object sender, EventArgs e)
        {
            var productName = productNameTextBox.Text;

            decimal productPrice = 0;
            decimal.TryParse(productPriceTextBox.Text, out productPrice);

            int productStock = 0;
            int.TryParse(productStockTextBox.Text, out productStock);

            Product product = new Product();
            product.Name = productName;
            product.Price = productPrice;
            product.Stock = productStock;

            productBusiness.Add(product);

            UpdateGrid();
            ClearTextBoxes();
        }

        private void updateProductButton_Click(object sender, EventArgs eventArgs)
        {
            if (productsManagementDataGridView.SelectedRows.Count > 0)
            {
                var selectedProductCellsCollection = productsManagementDataGridView.SelectedRows[0].Cells;
                var selectedProductId = int.Parse(selectedProductCellsCollection[0].Value.ToString());
                editedProductId = selectedProductId;
                UpdateTextBoxes(selectedProductId);
                ToggleSaveUpdate();
                DisableSelect();
            }
        }

        private void saveProductButton_Click(object sender, EventArgs eventArgs)
        {
            Product editedProduct = GetEditedProduct();
            productBusiness.Update(editedProduct);
            UpdateGrid();
            ResetSelect();
            ToggleSaveUpdate();
        }

        private void deleteProductButton_Click(object sender, EventArgs eventArgs)
        {
            if (productsManagementDataGridView.SelectedRows.Count > 0)
            {
                var selectedProductCellsCollection = productsManagementDataGridView.SelectedRows[0].Cells;
                var selectedProductId = int.Parse(selectedProductCellsCollection[0].Value.ToString());
                productBusiness.Delete(selectedProductId);
                UpdateGrid();
                ResetSelect();
            }
        }

        private Product GetEditedProduct()
        {
            Product product = new Product();
            product.Id = editedProductId;

            var productName = productNameTextBox.Text;

            decimal productPrice = 0;
            decimal.TryParse(productPriceTextBox.Text, out productPrice);

            int productStock = 0;
            int.TryParse(productStockTextBox.Text, out productStock);

            product.Name = productName;
            product.Price = productPrice;
            product.Stock = productStock;

            return product;
        }

        private void UpdateGrid()
        {
            productsManagementDataGridView.DataSource = productBusiness.GetAll();
            productsManagementDataGridView.ReadOnly = true;
            productsManagementDataGridView.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
        }

        private void UpdateTextBoxes(int id)
        {
            Product productToUpdate = productBusiness.GetById(id);
            productNameTextBox.Text = productToUpdate.Name;
            productPriceTextBox.Text = productToUpdate.Price.ToString();
            productStockTextBox.Text = productToUpdate.Stock.ToString();
        }

        private void ToggleSaveUpdate()
        {
            if (updateProductButton.Visible)
            {
                saveProductButton.Visible = true;
                updateProductButton.Visible = false;
            }
            else
            {
                saveProductButton.Visible = false;
                updateProductButton.Visible = true;
            }
        }

        private void ClearTextBoxes()
        {
            productNameTextBox.Text = string.Empty;
            productPriceTextBox.Text = string.Empty;
            productStockTextBox.Text = string.Empty;
        }

        private void DisableSelect()
        {
            productsManagementDataGridView.Enabled = false;
        }

        private void ResetSelect()
        {
            productsManagementDataGridView.ClearSelection();
            productsManagementDataGridView.Enabled = true;
        }
    }
}
