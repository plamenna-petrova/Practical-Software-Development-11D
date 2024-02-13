namespace ProductsWindowsFormsApp
{
    partial class MainForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.insertProductButton = new System.Windows.Forms.Button();
            this.updateProductButton = new System.Windows.Forms.Button();
            this.deleteProductButton = new System.Windows.Forms.Button();
            this.productNameTextBox = new System.Windows.Forms.TextBox();
            this.productPriceTextBox = new System.Windows.Forms.TextBox();
            this.productStockTextBox = new System.Windows.Forms.TextBox();
            this.productNameLabel = new System.Windows.Forms.Label();
            this.productPriceLabel = new System.Windows.Forms.Label();
            this.productStockLabel = new System.Windows.Forms.Label();
            this.productsManagementDataGridView = new System.Windows.Forms.DataGridView();
            this.saveProductButton = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.productsManagementDataGridView)).BeginInit();
            this.SuspendLayout();
            // 
            // insertProductButton
            // 
            this.insertProductButton.Location = new System.Drawing.Point(67, 190);
            this.insertProductButton.Name = "insertProductButton";
            this.insertProductButton.Size = new System.Drawing.Size(75, 23);
            this.insertProductButton.TabIndex = 0;
            this.insertProductButton.Text = "Insert";
            this.insertProductButton.UseVisualStyleBackColor = true;
            this.insertProductButton.Click += new System.EventHandler(this.insertProductButton_Click);
            // 
            // updateProductButton
            // 
            this.updateProductButton.Location = new System.Drawing.Point(171, 190);
            this.updateProductButton.Name = "updateProductButton";
            this.updateProductButton.Size = new System.Drawing.Size(75, 23);
            this.updateProductButton.TabIndex = 1;
            this.updateProductButton.Text = "Update";
            this.updateProductButton.UseVisualStyleBackColor = true;
            this.updateProductButton.Click += new System.EventHandler(this.updateProductButton_Click);
            // 
            // deleteProductButton
            // 
            this.deleteProductButton.Location = new System.Drawing.Point(278, 190);
            this.deleteProductButton.Name = "deleteProductButton";
            this.deleteProductButton.Size = new System.Drawing.Size(75, 23);
            this.deleteProductButton.TabIndex = 2;
            this.deleteProductButton.Text = "Delete";
            this.deleteProductButton.UseVisualStyleBackColor = true;
            this.deleteProductButton.Click += new System.EventHandler(this.deleteProductButton_Click);
            // 
            // productNameTextBox
            // 
            this.productNameTextBox.Location = new System.Drawing.Point(130, 37);
            this.productNameTextBox.Name = "productNameTextBox";
            this.productNameTextBox.Size = new System.Drawing.Size(223, 23);
            this.productNameTextBox.TabIndex = 3;
            // 
            // productPriceTextBox
            // 
            this.productPriceTextBox.Location = new System.Drawing.Point(130, 87);
            this.productPriceTextBox.Name = "productPriceTextBox";
            this.productPriceTextBox.Size = new System.Drawing.Size(223, 23);
            this.productPriceTextBox.TabIndex = 4;
            // 
            // productStockTextBox
            // 
            this.productStockTextBox.Location = new System.Drawing.Point(130, 138);
            this.productStockTextBox.Name = "productStockTextBox";
            this.productStockTextBox.Size = new System.Drawing.Size(223, 23);
            this.productStockTextBox.TabIndex = 5;
            // 
            // productNameLabel
            // 
            this.productNameLabel.AutoSize = true;
            this.productNameLabel.Location = new System.Drawing.Point(67, 40);
            this.productNameLabel.Name = "productNameLabel";
            this.productNameLabel.Size = new System.Drawing.Size(39, 15);
            this.productNameLabel.TabIndex = 6;
            this.productNameLabel.Text = "Name";
            // 
            // productPriceLabel
            // 
            this.productPriceLabel.AutoSize = true;
            this.productPriceLabel.Location = new System.Drawing.Point(67, 90);
            this.productPriceLabel.Name = "productPriceLabel";
            this.productPriceLabel.Size = new System.Drawing.Size(33, 15);
            this.productPriceLabel.TabIndex = 7;
            this.productPriceLabel.Text = "Price";
            // 
            // productStockLabel
            // 
            this.productStockLabel.AutoSize = true;
            this.productStockLabel.Location = new System.Drawing.Point(67, 141);
            this.productStockLabel.Name = "productStockLabel";
            this.productStockLabel.Size = new System.Drawing.Size(36, 15);
            this.productStockLabel.TabIndex = 8;
            this.productStockLabel.Text = "Stock";
            // 
            // productsManagementDataGridView
            // 
            this.productsManagementDataGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.productsManagementDataGridView.Location = new System.Drawing.Point(389, 37);
            this.productsManagementDataGridView.Name = "productsManagementDataGridView";
            this.productsManagementDataGridView.RowTemplate.Height = 25;
            this.productsManagementDataGridView.Size = new System.Drawing.Size(443, 283);
            this.productsManagementDataGridView.TabIndex = 9;
            // 
            // saveProductButton
            // 
            this.saveProductButton.Location = new System.Drawing.Point(171, 190);
            this.saveProductButton.Name = "saveProductButton";
            this.saveProductButton.Size = new System.Drawing.Size(75, 23);
            this.saveProductButton.TabIndex = 10;
            this.saveProductButton.Text = "Save";
            this.saveProductButton.UseVisualStyleBackColor = true;
            this.saveProductButton.Visible = false;
            this.saveProductButton.Click += new System.EventHandler(this.saveProductButton_Click);
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(936, 356);
            this.Controls.Add(this.saveProductButton);
            this.Controls.Add(this.productsManagementDataGridView);
            this.Controls.Add(this.productStockLabel);
            this.Controls.Add(this.productPriceLabel);
            this.Controls.Add(this.productNameLabel);
            this.Controls.Add(this.productStockTextBox);
            this.Controls.Add(this.productPriceTextBox);
            this.Controls.Add(this.productNameTextBox);
            this.Controls.Add(this.deleteProductButton);
            this.Controls.Add(this.updateProductButton);
            this.Controls.Add(this.insertProductButton);
            this.Name = "MainForm";
            this.Text = "Products Desktop App";
            this.Load += new System.EventHandler(this.MainForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.productsManagementDataGridView)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button insertProductButton;
        private System.Windows.Forms.Button updateProductButton;
        private System.Windows.Forms.Button deleteProductButton;
        private System.Windows.Forms.TextBox productNameTextBox;
        private System.Windows.Forms.TextBox productPriceTextBox;
        private System.Windows.Forms.TextBox productStockTextBox;
        private System.Windows.Forms.Label productNameLabel;
        private System.Windows.Forms.Label productPriceLabel;
        private System.Windows.Forms.Label productStockLabel;
        private System.Windows.Forms.DataGridView productsManagementDataGridView;
        private System.Windows.Forms.Button saveProductButton;
    }
}