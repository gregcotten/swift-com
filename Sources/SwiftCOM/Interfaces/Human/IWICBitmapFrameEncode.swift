/**
 * Copyright 2020 Saleem Abdulrasool <compnerd@compnerd.org>
 * All Rights Reserved.
 *
 * SPDX-License-Identifier: BSD-3-Clause
 **/

import WinSDK

public class IWICBitmapFrameEncode: IUnknown {
  override public class var IID: IID { IID_IWICBitmapFrameEncode }

  public func Commit() throws {
    guard let pUnk = UnsafeMutableRawPointer(self.pUnk) else {
      throw COMError(hr: E_INVALIDARG)
    }
    let pThis = pUnk.bindMemory(to: WinSDK.IWICBitmapFrameEncode.self, capacity: 1)

    let hr: HRESULT = pThis.pointee.lpVtbl.pointee.Commit(pThis)
    guard hr == S_OK else { throw COMError(hr: hr) }
  }

  public func GetMetadataQueryWriter() throws -> IWICMetadataQueryWriter {
    guard let pUnk = UnsafeMutableRawPointer(self.pUnk) else {
      throw COMError(hr: E_INVALIDARG)
    }
    let pThis = pUnk.bindMemory(to: WinSDK.IWICBitmapFrameEncode.self, capacity: 1)

    var pIMetadataQueryWriter: UnsafeMutablePointer<WinSDK.IWICMetadataQueryWriter>?
    let hr: HRESULT =
        pThis.pointee.lpVtbl.pointee.GetMetadataQueryWriter(pThis,
                                                            &pIMetadataQueryWriter)
    guard hr == S_OK else { throw COMError(hr: hr) }
    return IWICMetadataQueryWriter(pUnk: pIMetadataQueryWriter)
  }

  public func Initialize(_ pIEncoderOptions: IPropertyBag2) throws {
    guard let pUnk = UnsafeMutableRawPointer(self.pUnk) else {
      throw COMError(hr: E_INVALIDARG)
    }
    let pThis = pUnk.bindMemory(to: WinSDK.IWICBitmapFrameEncode.self, capacity: 1)

    let hr: HRESULT =
        pThis.pointee.lpVtbl.pointee.Initialize(pThis,
                                                RawPointer(pIEncoderOptions))
    guard hr == S_OK else { throw COMError(hr: hr) }
  }

  public func SetColorContexts(_ contexts: [IWICColorContext]) throws {
    guard let pUnk = UnsafeMutableRawPointer(self.pUnk) else {
      throw COMError(hr: E_INVALIDARG)
    }
    let pThis = pUnk.bindMemory(to: WinSDK.IWICBitmapFrameEncode.self, capacity: 1)

    var pointers: [UnsafeMutablePointer<WinSDK.IWICColorContext>?] =
        contexts.map { RawPointer($0) }
    let hr: HRESULT = pointers.withUnsafeMutableBufferPointer {
      pThis.pointee.lpVtbl.pointee.SetColorContexts(pThis, UINT($0.count),
                                                    $0.baseAddress)
    }
    guard hr == S_OK else { throw COMError(hr: hr) }
  }

  public func SetPalette(_ pIPalette: IWICPalette) throws {
    guard let pUnk = UnsafeMutableRawPointer(self.pUnk) else {
      throw COMError(hr: E_INVALIDARG)
    }
    let pThis = pUnk.bindMemory(to: WinSDK.IWICBitmapFrameEncode.self, capacity: 1)

    let hr: HRESULT =
        pThis.pointee.lpVtbl.pointee.SetPalette(pThis, RawPointer(pIPalette))
    guard hr == S_OK else { throw COMError(hr: hr) }
  }

  public func SetPixelFormat(_ pPixelFormat: inout WICPixelFormatGUID) throws {
    guard let pUnk = UnsafeMutableRawPointer(self.pUnk) else {
      throw COMError(hr: E_INVALIDARG)
    }
    let pThis = pUnk.bindMemory(to: WinSDK.IWICBitmapFrameEncode.self, capacity: 1)

    let hr: HRESULT =
        pThis.pointee.lpVtbl.pointee.SetPixelFormat(pThis, &pPixelFormat)
    guard hr == S_OK else { throw COMError(hr: hr) }
  }

  public func SetResolution(_ dpiX: Double, _ dpiY: Double) throws {
    guard let pUnk = UnsafeMutableRawPointer(self.pUnk) else {
      throw COMError(hr: E_INVALIDARG)
    }
    let pThis = pUnk.bindMemory(to: WinSDK.IWICBitmapFrameEncode.self, capacity: 1)

    let hr: HRESULT =
        pThis.pointee.lpVtbl.pointee.SetResolution(pThis, dpiX, dpiY)
    guard hr == S_OK else { throw COMError(hr: hr) }
  }

  public func SetSize(_ uiWidth: UINT, _ uiHeight: UINT) throws {
    guard let pUnk = UnsafeMutableRawPointer(self.pUnk) else {
      throw COMError(hr: E_INVALIDARG)
    }
    let pThis = pUnk.bindMemory(to: WinSDK.IWICBitmapFrameEncode.self, capacity: 1)

    let hr: HRESULT =
        pThis.pointee.lpVtbl.pointee.SetSize(pThis, uiWidth, uiHeight)
    guard hr == S_OK else { throw COMError(hr: hr) }
  }

  public func SetThumbnail(_ pIThumbnail: IWICBitmapSource) throws {
    guard let pUnk = UnsafeMutableRawPointer(self.pUnk) else {
      throw COMError(hr: E_INVALIDARG)
    }
    let pThis = pUnk.bindMemory(to: WinSDK.IWICBitmapFrameEncode.self, capacity: 1)

    let hr: HRESULT =
        pThis.pointee.lpVtbl.pointee.SetThumbnail(pThis,
                                                  RawPointer(pIThumbnail))
    guard hr == S_OK else { throw COMError(hr: hr) }
  }

  public func WritePixels(_ lineCount: UINT, _ cbStride: UINT, _ pixels: inout [BYTE]) throws {
    guard let pUnk = UnsafeMutableRawPointer(self.pUnk) else {
      throw COMError(hr: E_INVALIDARG)
    }
    let pThis = pUnk.bindMemory(to: WinSDK.IWICBitmapFrameEncode.self, capacity: 1)

    let hr: HRESULT = pixels.withUnsafeMutableBufferPointer {
      pThis.pointee.lpVtbl.pointee.WritePixels(pThis, lineCount, cbStride,
                                               UINT($0.count), $0.baseAddress)
    }
    guard hr == S_OK else { throw COMError(hr: hr) }
  }

  public func WriteSource(_ pIBitmapSource: IWICBitmapSource, _ rc: inout WICRect) throws {
    guard let pUnk = UnsafeMutableRawPointer(self.pUnk) else {
      throw COMError(hr: E_INVALIDARG)
    }
    let pThis = pUnk.bindMemory(to: WinSDK.IWICBitmapFrameEncode.self, capacity: 1)

    let hr: HRESULT = withUnsafeMutablePointer(to: &rc) {
      pThis.pointee.lpVtbl.pointee.WriteSource(pThis,
                                               RawPointer(pIBitmapSource), $0)
    }
    guard hr == S_OK else { throw COMError(hr: hr) }
  }
}