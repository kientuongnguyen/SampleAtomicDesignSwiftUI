//
//  GridScreen.swift
//  SampleAtomicDesign
//
//  Created by Nguyễn Kiến Tường on 17/07/2022.
//

import SwiftUI

struct GridScreen: View {
    @StateObject var grid = SampleGridObject(grid: [
        ["900", "234", "123", ""],
        ["", "090", "100", ""],
        ["678", "", "009", ""],
        ["678", "", "009", ""]
    ])
    
    private func getSwipeDirection(dx: Float, dy: Float) -> SwipeDirection {
        if (abs(dx) > abs (dy)) {
            if (dx > 0) {
                return .right
            } else {
                return .left
            }
        } else {
            if (dy > 0) {
                return .up
            } else {
                return .down
            }
        }
    }
    
    private func moveUp() {
        let tmp = grid.grid[0]
        for i in 0...grid.grid.count - 2 {
            grid.grid[i] = grid.grid[i + 1]
        }
        grid.grid[grid.grid.count - 1] = tmp
    }

    private func moveDown() {
        let tmp = grid.grid[grid.grid.endIndex]
        for i in stride(from: grid.grid.endIndex, to: 1, by: -1) {
            grid.grid[i] = grid.grid[i - 1]
        }
        grid.grid[0] = tmp
    }

    
    private func onSwipe(direction: SwipeDirection) {
        switch direction {
        case .up:
            moveUp()
        case .down:
            moveDown()
        case .left:
            moveUp()
        case .right:
            moveUp()
        }
    }
    
    var body: some View {
        VStack {
            GridScreenTemplate(grid: grid)
                .gesture(DragGesture()
                    .onChanged { value in
                    }
                    .onEnded{ value in
                        let dx = value.startLocation.x - value.location.x
                        let dy = value.startLocation.y - value.location.y
                        onSwipe(direction: getSwipeDirection(dx: Float(dx), dy: Float(dy)))
                        
                    })
        }
    }
}

struct GridScreen_Previews: PreviewProvider {
    static var previews: some View {
        GridScreen()
    }
}

enum SwipeDirection {
    case up
    case down
    case left
    case right
}
