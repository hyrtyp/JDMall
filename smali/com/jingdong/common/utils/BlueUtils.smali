.class public Lcom/jingdong/common/utils/BlueUtils;
.super Ljava/lang/Object;
.source "BlueUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWiFiAddress()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 8
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 12
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 22
    :cond_0
    :goto_0
    return-object v1

    .line 18
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
